#!/usr/bin/env bash
set -euo pipefail

checker_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
scratch=$(mktemp -d)
trap 'rm -rf -- "$scratch"' EXIT
mkdir -p "$scratch/Formalisation" "$scratch/verification"
cp "$checker_dir/lean-toolchain" "$scratch/"
cp "$checker_dir/verification/allowed-axioms.txt" "$scratch/verification/"
cat > "$scratch/lakefile.toml" <<'TOML'
name = "fixture"
leanOptions = { warningAsError = true }

[[lean_lib]]
name = "Formalisation"
globs = ["Formalisation", "Formalisation.+"]
TOML

# The root deliberately omits all fixture modules.
printf 'theorem root : True := True.intro\n' > "$scratch/Formalisation.lean"
cat > "$scratch/Formalisation/Foundation.lean" <<'LEAN'
theorem foundation (p q : Prop) (h : p ↔ q) : p = q := propext h
LEAN
checker="$checker_dir/check.sh"
bash "$checker" "$scratch" > "$scratch/log" 2>&1 || { cat "$scratch/log"; exit 1; }
grep -F 'Audited Formalisation.Foundation (1 declarations)' "$scratch/log"

expect_failure() {
  if bash "$checker" "$scratch" > "$scratch/log" 2>&1; then
    printf 'Expected verification to fail with: %s\n' "$1" >&2
    exit 1
  fi
  grep -F "$1" "$scratch/log" || { cat "$scratch/log"; exit 1; }
}

# An unfinished proof in a module that the root does not import.
printf 'theorem incomplete : True := by sorry\n' > "$scratch/Formalisation/Incomplete.lean"
expect_failure "declaration uses 'sorry'"

# Suppressing the warning still leaves a forbidden dependency in the compiled module.
cat > "$scratch/Formalisation/Incomplete.lean" <<'LEAN'
set_option warningAsError false
theorem incomplete : True := by sorry
LEAN
expect_failure 'incomplete depends on forbidden axioms: [sorryAx]'
printf 'sorryAx\n' >> "$scratch/verification/allowed-axioms.txt"
expect_failure 'sorryAx cannot be allowlisted'
cp "$checker_dir/verification/allowed-axioms.txt" "$scratch/verification/"
rm "$scratch/Formalisation/Incomplete.lean"

# An axiom used through an imported theorem in an unlisted module.
cat > "$scratch/Formalisation/Unapproved.lean" <<'LEAN'
axiom unapproved : False
theorem intermediate : False := unapproved
LEAN
cat > "$scratch/Formalisation/Indirect.lean" <<'LEAN'
import Formalisation.Unapproved
theorem indirect : True := intermediate.elim
LEAN
expect_failure 'indirect depends on forbidden axioms: [unapproved]'
printf 'unapproved\n' >> "$scratch/verification/allowed-axioms.txt"
bash "$checker" "$scratch" > "$scratch/log" 2>&1 || { cat "$scratch/log"; exit 1; }
grep -F 'Audited Formalisation.Indirect (1 declarations)' "$scratch/log"

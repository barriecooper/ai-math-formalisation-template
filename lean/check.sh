#!/usr/bin/env bash
set -euo pipefail

checker_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd -- "${1:-$checker_dir}"
expected=$(<lean-toolchain)
version=$(lake env lean --version)
if [[ $version != "Lean (version ${expected##*:v},"* ]]; then
  printf 'Expected %s, got %s\n' "$expected" "$version" >&2
  exit 1
fi

scratch=$(mktemp -d)
trap 'rm -rf -- "$scratch"' EXIT
find . -path './.lake' -prune -o -name '*.lean' -print0 > "$scratch/sources"
# The audit uses Lean's legacy import mode to load private project declarations.
printf 'import Lean\n' > "$scratch/Audit.lean"
targets=()
modules=()
while IFS= read -r -d '' source; do
  module=${source#./}
  module=${module%.lean}
  module=${module//\//.}
  if [[ ! $module =~ ^Formalisation(\.[A-Za-z_][A-Za-z0-9_]*)*$ ||
        $source != "./${module//./\/}.lean" || ! -f $source ]]; then
    printf 'Lean source outside the supported Formalisation module layout: %s\n' "$source" >&2
    exit 1
  fi
  targets+=("+$module")
  modules+=("$module")
  printf 'import %s\n' "$module" >> "$scratch/Audit.lean"
done < "$scratch/sources"
if [[ ${#targets[@]} -eq 0 ]]; then
  printf 'No project Lean modules found\n' >&2
  exit 1
fi

lake build "${targets[@]}"
cat "$checker_dir/verification/Audit.lean.in" >> "$scratch/Audit.lean"
export FORMALISATION_AXIOMS="$PWD/verification/allowed-axioms.txt"
export FORMALISATION_MODULES
FORMALISATION_MODULES=$(printf '%s\n' "${modules[@]}")
lake env lean -DwarningAsError=true "$scratch/Audit.lean"

#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
expected=$(<lean-toolchain)
version=$(lean --version)
if [[ $version != "Lean (version ${expected##*:v},"* ]]; then
  printf 'Expected %s, got %s\n' "$expected" "$version" >&2
  exit 1
fi

build_dir=$(mktemp -d)
trap 'rm -rf -- "$build_dir"' EXIT
export LEAN_PATH="$build_dir"
lean -DwarningAsError=true -o "$build_dir/Example.olean" Example.lean
lean -DwarningAsError=true Audit.lean

#!/usr/bin/env bash
set -euo pipefail

project_dir=$(cd "$(dirname "$0")" && pwd)
compiler=""

if command -v rcc >/dev/null 2>&1; then
  compiler="rcc"
elif command -v pyside6-rcc >/dev/null 2>&1; then
  compiler="pyside6-rcc"
else
  printf 'Error: Qt rcc or pyside6-rcc is required.\n' >&2
  exit 1
fi

mkdir -p "$project_dir/dist"
"$compiler" --binary "$project_dir/src/resources.qrc" \
  -o "$project_dir/dist/catthode.qbtheme"

printf 'Built %s\n' "$project_dir/dist/catthode.qbtheme"

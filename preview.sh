#!/usr/bin/env bash
# Local live-reload preview for the FindMe docs.
# Creates/uses a .venv, installs deps, and serves the site at http://127.0.0.1:8000
# Rebuilds automatically whenever a source file changes.
set -euo pipefail

cd "$(dirname "$0")"

if [ ! -d .venv ]; then
  python3 -m venv .venv
fi
# shellcheck disable=SC1091
source .venv/bin/activate

pip install -q -r docs/requirements.txt

exec sphinx-autobuild docs docs/_build/html --host 127.0.0.1 --port 8000 --open-browser

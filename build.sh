#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

PYTHON_BIN="${PYTHON_BIN:-python3}"
PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore::SyntaxWarning "$PYTHON_BIN" tools/jemdoc.py index.jemdoc

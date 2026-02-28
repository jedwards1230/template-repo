#!/bin/bash
# Devcontainer entrypoint — runs on every container start via postStartCommand.
#
# Keep this script idempotent (safe to run multiple times).

set -euo pipefail

echo "Entrypoint running..."

# ---------------------------------------------------------------------------
# Secrets setup
# TODO: fetch secrets from a vault (1Password, AWS Secrets Manager, etc.)
#
# Example with 1Password CLI:
#   if command -v op &>/dev/null && [ -n "${OP_SERVICE_ACCOUNT_TOKEN:-}" ]; then
#     echo "Fetching secrets from 1Password..."
#     export MY_API_KEY=$(op read "op://vault/item/field")
#   fi
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Git config
# TODO: configure git identity if not already set
#
# Example:
#   git config --global user.email "dev@example.com" || true
#   git config --global user.name "Developer" || true
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Dependency installation
# TODO: install project dependencies
#
# Examples:
#   go mod download
#   npm install
#   pip install -r requirements.txt
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Shell aliases
# Source project shell aliases if they exist
# ---------------------------------------------------------------------------
if [ -f "$(dirname "$0")/../scripts/shell-aliases.sh" ]; then
  # shellcheck disable=SC1090
  source "$(dirname "$0")/../scripts/shell-aliases.sh"
fi

echo "Entrypoint complete."

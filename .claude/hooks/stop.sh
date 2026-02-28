#!/bin/bash
# Hook: Stop
# Fires when Claude finishes generating a response (the assistant turn ends).
#
# IMPORTANT: All informational messages go to stderr (>&2).
# Exit 0 to not block. Exit 2 to block (stderr message shown to Claude).
#
# Example: run tests after every response
#   if git diff --name-only HEAD | grep -q '\.go$'; then
#     if ! go test ./... >/dev/null 2>&1; then
#       echo "Tests failing — fix before continuing" >&2
#       exit 2
#     fi
#   fi

set -euo pipefail

# TODO: Add project-specific quality checks here
# Examples: linting, formatting, test runs

exit 0

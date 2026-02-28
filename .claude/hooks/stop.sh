#!/bin/bash
# Hook: Stop
# Fires when Claude finishes generating a response (the assistant turn ends).
#
# Typical uses:
#   - Run linters or tests as a final check after Claude makes changes
#   - Validate that generated files pass formatting rules
#   - Alert or log that a response was completed
#
# Example: run tests after every response
#   if git diff --name-only HEAD | grep -q '\.go$'; then
#     go test ./... 2>&1 | tail -20
#   fi

set -euo pipefail

echo "[hook:stop] Triggered (unconfigured) — edit .claude/hooks/stop.sh"

exit 0

#!/bin/bash
# Hook: PreToolUse
# Fires before every tool call. Receives the tool input as JSON on stdin.
#
# Typical uses:
#   - Block dangerous commands (e.g., reject rm -rf on critical paths)
#   - Validate arguments before a destructive tool runs
#   - Log tool usage for auditing
#
# To read the tool input JSON:
#   input=$(cat)
#   tool_name=$(echo "$input" | jq -r '.tool_name')
#   tool_input=$(echo "$input" | jq -r '.tool_input')
#
# Exit codes:
#   0 — allow the tool call to proceed
#   2 — block the tool call (Claude sees your stderr output as the reason)

set -euo pipefail

# Read stdin (tool input JSON is always passed here)
input=$(cat)
tool_name=$(echo "$input" | jq -r '.tool_name // empty' 2>/dev/null || true)

echo "[hook:pre-tool-use] Triggered (unconfigured) tool=$tool_name — edit .claude/hooks/pre-tool-use.sh"

# Example: block dangerous rm commands
# command=$(echo "$input" | jq -r '.tool_input.command // empty' 2>/dev/null || true)
# if [ "$tool_name" = "Bash" ] && echo "$command" | grep -q 'rm -rf /'; then
#   echo "Blocked: dangerous rm command" >&2
#   exit 2
# fi

exit 0

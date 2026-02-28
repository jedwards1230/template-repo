#!/bin/bash
# Hook: PostToolUse
# Fires after every tool call. Receives the tool output as JSON on stdin.
#
# Typical uses:
#   - Auto-format files after Edit or Write tool calls
#   - Run linters on modified files
#   - Sync generated files after code changes
#
# To read the tool output JSON:
#   output=$(cat)
#   tool_name=$(echo "$output" | jq -r '.tool_name')
#   # For Write/Edit, the modified file path is in .tool_input.path
#   file_path=$(echo "$output" | jq -r '.tool_input.path // empty')
#
# Example: auto-format Go files after Edit
#   if [ "$tool_name" = "Edit" ] && [[ "$file_path" == *.go ]]; then
#     gofmt -w "$file_path"
#   fi

set -euo pipefail

# Read stdin (tool output JSON is always passed here)
output=$(cat)
tool_name=$(echo "$output" | jq -r '.tool_name // empty' 2>/dev/null || true)
file_path=$(echo "$output" | jq -r '.tool_input.file_path // .tool_input.path // empty' 2>/dev/null || true)

echo "[hook:post-tool-use] Triggered (unconfigured) tool=$tool_name file=$file_path — edit .claude/hooks/post-tool-use.sh"

# Example: auto-format Go files after Edit/Write
# if [[ "$tool_name" =~ ^(Edit|Write)$ ]] && [[ "$file_path" == *.go ]]; then
#   gofmt -w "$file_path" 2>/dev/null || true
# fi

exit 0

#!/bin/bash
# Hook: SessionStart (matcher: "startup")
# Fires once when a fresh Claude Code session begins (not on resume).
#
# Primary use: detect the runtime environment and install any tools that
# are not present in the container image. In Claude Code Web, each session
# starts from a clean ephemeral container, so tools must be installed here.
#
# This hook is intentionally left unconfigured. Edit it to suit your project.

set -euo pipefail

# Detect Claude Code Web vs local devcontainer
if [ "${CLAUDE_CODE_REMOTE:-}" = "true" ]; then
  echo "[hook:session-start] Running in Claude Code Web (ephemeral container)"
  echo "[hook:session-start] TODO: add tool installation logic for web sessions"
  echo "[hook:session-start] Add tool installation logic below for web sessions"
else
  echo "[hook:session-start] Running in local devcontainer"
fi

echo "[hook:session-start] Triggered (unconfigured) — edit .claude/hooks/session-start.sh"

# Always exit 0 — never block the session from starting
exit 0

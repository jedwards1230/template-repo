#!/bin/bash
# Hook: SessionEnd
# Fires when the Claude Code session terminates.
#
# Typical uses:
#   - Clean up temporary files created during the session
#   - Flush logs or metrics
#   - Save session state for later resumption
#   - Stop background processes started during the session

set -euo pipefail

echo "[hook:session-end] Triggered (unconfigured) — edit .claude/hooks/session-end.sh"

exit 0

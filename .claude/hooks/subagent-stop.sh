#!/bin/bash
# Hook: SubagentStop
# Fires when a subagent (spawned via the Agent tool) finishes its turn.
#
# Typical uses:
#   - Aggregate results from parallel subagents
#   - Log subagent completion for multi-agent workflows
#   - Run validation after subagent writes files

set -euo pipefail

echo "[hook:subagent-stop] Triggered (unconfigured) — edit .claude/hooks/subagent-stop.sh"

exit 0

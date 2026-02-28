# template-repo

Starter template for Claude Code-ready repositories. Provides a minimal,
opinionated scaffold that works in both local devcontainers and Claude Code Web
(ephemeral containers).

## What's Included

```
.claude/
  settings.json          # Hook wiring + minimal read-only permissions
  hooks/
    session-start.sh     # Detects Claude Code Web; add tool installs here
    pre-tool-use.sh      # Runs before every tool call (block/validate)
    post-tool-use.sh     # Runs after every tool call (auto-format)
    stop.sh              # Runs when Claude finishes a response (lint/test)
    subagent-stop.sh     # Runs when a subagent finishes
    session-end.sh       # Runs on session end (cleanup)
  rules/
    DOCUMENTATION.md     # Placeholder: document project conventions here
.devcontainer/
  devcontainer.json      # VS Code devcontainer config
  entrypoint.sh          # Runs on container start (secrets, deps, git config)
  Dockerfile             # Base image with git, curl, jq, yq
.gitignore               # Common patterns + .claude/settings.local.json
.pre-commit-config.yaml  # trailing-whitespace, end-of-file, check-yaml, etc.
CLAUDE.md                # Project instructions for Claude Code
README.md                # This file
```

## Quick Setup

1. Copy this template into your new repo
2. Fill in `CLAUDE.md` with project-specific instructions
3. Edit `.devcontainer/Dockerfile` to add your language toolchain
4. Edit `.devcontainer/entrypoint.sh` to install dependencies and fetch secrets
5. Edit `.claude/hooks/session-start.sh` to install tools in Claude Code Web
6. Run `pre-commit install` to enable git hooks

## Hook Overview

All hooks are unconfigured stubs. They exit 0 and print a notice. Replace the
body of each script with your project logic.

| Hook | When it fires | Common use |
|------|--------------|------------|
| `session-start.sh` | Fresh session only (not resume) | Install CLI tools in web sessions |
| `pre-tool-use.sh` | Before every tool call | Block dangerous commands |
| `post-tool-use.sh` | After every tool call | Auto-format modified files |
| `stop.sh` | When Claude finishes responding | Run linters / tests |
| `subagent-stop.sh` | When a subagent finishes | Aggregate results |
| `session-end.sh` | Session terminates | Cleanup temp files |

## Claude Code Web

The `session-start.sh` hook checks `CLAUDE_CODE_REMOTE=true` to detect
ephemeral web containers and run one-time tool installation.

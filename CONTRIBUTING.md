# Contributing to <TODO(template): project name>

<TODO(template): one-line description of what this project is.> All changes
go through the workflow below.

## Prerequisites

<TODO(template): language/runtime version and required tools — e.g. "Go ≥
1.25 and `golangci-lint`.">

The repository ships a devcontainer (`.devcontainer/`) with the full toolchain
preinstalled — opening the repo in it is the quickest way to get a working
environment.

## Build, test & lint

```bash
# TODO(template): the exact commands CI runs — uncomment and customize the
# matching block in `.github/workflows/ci.yml`, then keep this list in sync
# with it. e.g.:
#
# Go:
#   go build ./... && go vet ./... && go test -race ./...
#   golangci-lint run
#
# Node/Bun:
#   bun install && bun run lint && bun test
#
# Python:
#   pip install -r requirements.txt && pytest
```

## Documentation

Keep documentation current as part of the change, not as a follow-up — update
the README, [`docs/PRD.md`](docs/PRD.md)/[`docs/TESTING.md`](docs/TESTING.md),
and any affected package docs in the same PR.

## Before you open a PR

- Make sure all CI checks pass locally first — run the formatter, linter, and tests.
- Run `pre-commit run --all-files` (this repo uses pre-commit hooks).

## Branching & commits

- Branch off `main`; never commit directly to `main`.
- Use [Conventional Commits](https://www.conventionalcommits.org/) prefixes (`feat:`, `fix:`, `docs:`, `chore:`, `refactor:`, `test:`, …).
- Sign your commits where possible (`git commit -S`).
- Keep each PR focused; delete dead code rather than commenting it out.

## Pull requests

- Open the PR against `main`.
- Every PR runs CI (required check: **CI**). Resolve **all** review threads before the PR is merged.
- An automated code review runs on each PR; address and resolve its threads like any other review.
- A PR can be merged once CI is green and all review threads are resolved.

## Releases

Merging a PR to `main` cuts a versioned release via the shared `ai-release.yml` reusable workflow (see `.github/workflows/auto-release.yml`). Label the PR `semver:patch`, `semver:minor`, or `semver:major` to pick the bump; without a `semver:*` label it releases as a patch. Label it `semver:none` to merge without releasing. The first commit of a repo generated from the template does not release, and neither does a push to the template repo itself (edge cases: see the header of `auto-release.yml`). For a manual release or a dry-run preview, run `auto-release.yml` via `workflow_dispatch`. A release publishes a single immutable `vX.Y.Z` tag with AI-generated release notes.

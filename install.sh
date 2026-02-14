#!/usr/bin/env bash
set -euo pipefail

# ─────────────────────────────────────────────
# AI Agent Slash Commands — Installer
# ─────────────────────────────────────────────
# Usage:
#   curl -sL https://raw.githubusercontent.com/ymd38/slash-commands/main/install.sh | bash
# ─────────────────────────────────────────────

REPO_RAW="https://raw.githubusercontent.com/ymd38/slash-commands/main"

SKILLS=(
  "spec-doc"
  "test-gen"
  "test-analytics"
  "software-evaluation"
  "vulnerability-scan"
  "vulnerability-fix"
)

# ── Colours ──────────────────────────────────
GREEN="\033[0;32m"
CYAN="\033[0;36m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"

info()  { printf "${CYAN}[info]${RESET}  %s\n" "$1"; }
ok()    { printf "${GREEN}[ok]${RESET}    %s\n" "$1"; }
warn()  { printf "${YELLOW}[warn]${RESET}  %s\n" "$1"; }
error() { printf "${RED}[error]${RESET} %s\n" "$1"; }

# ── Agent selection (read from /dev/tty for pipe support) ──
select_agent() {
  printf "\n"
  printf "${CYAN}Which AI agent do you use?${RESET}\n"
  printf "  1) Windsurf\n"
  printf "  2) Claude Code\n"
  printf "  3) Both\n"
  printf "\n"
  printf "Enter choice [1-3]: "
  read -r choice < /dev/tty

  case "${choice}" in
    1) AGENT="windsurf" ;;
    2) AGENT="claude"   ;;
    3) AGENT="both"     ;;
    *)
      error "Invalid choice: ${choice}"
      exit 1
      ;;
  esac
}

# ── Install for Windsurf ─────────────────────
install_windsurf() {
  local dest=".windsurf/workflows"
  info "Installing to ${dest}/ ..."
  mkdir -p "${dest}"

  for skill in "${SKILLS[@]}"; do
    local url="${REPO_RAW}/${skill}.md"
    local file="${dest}/${skill}.md"
    curl -sfL "${url}" -o "${file}"
    ok "  ${file}"
  done
}

# ── Install for Claude Code ──────────────────
install_claude() {
  local dest=".claude/commands"
  info "Installing to ${dest}/ ..."
  mkdir -p "${dest}"

  for skill in "${SKILLS[@]}"; do
    local url="${REPO_RAW}/${skill}.md"
    local file="${dest}/${skill}.md"
    curl -sfL "${url}" -o "${file}"
    ok "  ${file}"
  done
}

# ── Main ─────────────────────────────────────
main() {
  printf "\n"
  printf "${GREEN}╔══════════════════════════════════════╗${RESET}\n"
  printf "${GREEN}║  AI Agent Slash Commands — Installer ║${RESET}\n"
  printf "${GREEN}╚══════════════════════════════════════╝${RESET}\n"

  select_agent

  case "${AGENT}" in
    windsurf)
      install_windsurf
      ;;
    claude)
      install_claude
      ;;
    both)
      install_windsurf
      printf "\n"
      install_claude
      ;;
  esac

  printf "\n"
  ok "Done! Slash commands are ready to use."
  printf "\n"
}

main

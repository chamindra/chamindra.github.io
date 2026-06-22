#!/usr/bin/env bash
# launch.sh — check dependencies, install if needed, start Jekyll dev server

set -e

PORT="${PORT:-4000}"
SITE_DIR="$(cd "$(dirname "$0")" && pwd)"

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; NC='\033[0m'
info()  { echo -e "${CYAN}▸${NC} $*"; }
ok()    { echo -e "${GREEN}✓${NC} $*"; }
warn()  { echo -e "${YELLOW}⚠${NC} $*"; }
error() { echo -e "${RED}✗${NC} $*"; exit 1; }

echo ""
echo -e "${CYAN}Chamindra de Silva — Jekyll Site${NC}"
echo "──────────────────────────────────"
echo ""

# ── 1. Homebrew ──────────────────────────────────────────────────────────────
if ! command -v brew &>/dev/null; then
  warn "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ok "Homebrew installed"
else
  ok "Homebrew: $(brew --version | head -1)"
fi

# ── 2. Ruby ───────────────────────────────────────────────────────────────────
# We need Ruby >= 3.1 (brew formula 'ruby' provides 4.x which works fine with
# the pinned Liquid 4.0.4 in our Gemfile)
if ! command -v ruby &>/dev/null || [[ "$(ruby -e 'puts RUBY_VERSION.split(".")[0].to_i')" -lt 3 ]]; then
  warn "Ruby 3+ not found. Installing via Homebrew..."
  brew install ruby
  # Add brew ruby to PATH for this session
  eval "$(brew shellenv)"
  BREW_RUBY="$(brew --prefix ruby)/bin"
  export PATH="$BREW_RUBY:$PATH"
  ok "Ruby installed: $(ruby --version)"
else
  ok "Ruby: $(ruby --version)"
  # If brew ruby is newer than system ruby, prefer it
  BREW_RUBY="$(brew --prefix ruby 2>/dev/null)/bin"
  if [[ -d "$BREW_RUBY" ]]; then
    export PATH="$BREW_RUBY:$PATH"
  fi
fi

# ── 3. Bundler ────────────────────────────────────────────────────────────────
if ! command -v bundle &>/dev/null; then
  info "Installing Bundler..."
  gem install bundler
  ok "Bundler installed"
else
  BUNDLER_VER="$(bundle --version 2>/dev/null || echo 'unknown')"
  ok "Bundler: $BUNDLER_VER"
fi

# ── 4. Gem dependencies ───────────────────────────────────────────────────────
cd "$SITE_DIR"

if [[ ! -f Gemfile.lock ]] || ! bundle check &>/dev/null 2>&1; then
  info "Installing gem dependencies (this takes a minute first time)..."
  bundle install
  ok "Gems installed"
else
  ok "Gem dependencies up to date"
fi

# ── 5. Kill any existing Jekyll process on the port ───────────────────────────
if lsof -i ":$PORT" -sTCP:LISTEN -t &>/dev/null; then
  warn "Port $PORT in use — stopping existing process..."
  lsof -i ":$PORT" -sTCP:LISTEN -t | xargs kill -9 2>/dev/null || true
  sleep 1
fi

# ── 6. Start Jekyll ───────────────────────────────────────────────────────────
echo ""
info "Starting Jekyll on http://localhost:$PORT ..."
echo ""

# Trap Ctrl-C so the message is clean
trap 'echo ""; info "Server stopped."; exit 0' INT TERM

bundle exec jekyll serve \
  --port "$PORT" \
  --livereload \
  --open-url \
  2>&1

#!/usr/bin/env bash
# Run from anywhere: bash /Users/SamBro/Desktop/sports-talk-deck-git/setup-and-push.sh
set -euo pipefail

DECK_SRC="/Users/SamBro/Desktop/sports-talk-deck.html"
REPO_DIR="/Users/SamBro/Desktop/sports-talk-deck-git"

if [[ ! -f "$DECK_SRC" ]]; then
  echo "Missing: $DECK_SRC"
  exit 1
fi

mkdir -p "$REPO_DIR"
cp "$DECK_SRC" "$REPO_DIR/sports-talk-deck.html"

cd "$REPO_DIR"

if [[ ! -d .git ]]; then
  git init
fi

printf '%s\n' '.DS_Store' > .gitignore

git add .gitignore sports-talk-deck.html

if ! git diff --cached --quiet; then
  git commit -m "Initial commit: Sports Talk MVP presentation deck"
fi

git branch -M main 2>/dev/null || true
git status

if command -v gh >/dev/null 2>&1; then
  if ! git remote get-url origin >/dev/null 2>&1; then
    echo "Creating GitHub repo and pushing (gh)..."
    gh repo create sports-talk-deck --public --source=. --remote=origin --push
  else
    git push -u origin main
  fi
else
  echo ""
  echo "GitHub CLI (gh) not found. Add a remote and push:"
  echo "  cd $REPO_DIR"
  echo "  git branch -M main"
  echo "  git remote add origin https://github.com/YOUR_USER/sports-talk-deck.git"
  echo "  git push -u origin main"
fi

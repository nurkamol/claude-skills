#!/bin/bash
# =============================================================
# setup.sh — Claude Skills Repo Setup
# Run this from: /Users/nurkamol/coding/claude-skills
# =============================================================

set -e  # Stop on any error

REPO_DIR="/Users/nurkamol/coding/claude-skills"
GITHUB_REMOTE="https://github.com/nurkamol/claude-skills.git"

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║   Claude Skills — Repo Setup Script     ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# ── 1. Confirm we're in the right directory ──────────────────
if [ "$(pwd)" != "$REPO_DIR" ]; then
  echo "❌  Wrong directory. Run this from:"
  echo "    $REPO_DIR"
  echo ""
  echo "    cd $REPO_DIR && bash setup.sh"
  exit 1
fi
echo "✅  Directory confirmed: $(pwd)"

# ── 2. Check git is installed ────────────────────────────────
if ! command -v git &> /dev/null; then
  echo "❌  Git not found. Install it from https://git-scm.com"
  exit 1
fi
echo "✅  Git found: $(git --version)"

# ── 3. Initialize git if not already done ───────────────────
if [ ! -d ".git" ]; then
  git init
  echo "✅  Git repository initialized"
else
  echo "✅  Git already initialized"
fi

# ── 4. Set remote if not already set ────────────────────────
if git remote | grep -q "^origin$"; then
  echo "✅  Remote 'origin' already set: $(git remote get-url origin)"
else
  git remote add origin "$GITHUB_REMOTE"
  echo "✅  Remote added: $GITHUB_REMOTE"
fi

# ── 5. Stage and commit all files ───────────────────────────
git add .
echo ""
echo "📦  Files staged:"
git status --short
echo ""

git commit -m "Initial release: rankmath-seo-blog-generator v2.0

- Root catalog README with skills table
- CONTRIBUTING.md with submission guidelines
- MIT LICENSE
- .gitignore
- rankmath-seo-blog-generator/ skill folder
  - SKILL.md v2.0 (retrained against RankMath Pro inspection)
  - README.md with full usage docs and changelog
  - examples/ with 2 real post outputs
- _template/ scaffold for future skills
- .github/PULL_REQUEST_TEMPLATE.md"

echo ""
echo "✅  Commit created"

# ── 6. Push to GitHub ────────────────────────────────────────
echo ""
echo "🚀  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║   ✅  All done! Repo is live.           ║"
echo "╚══════════════════════════════════════════╝"
echo ""
echo "  🔗  https://github.com/nurkamol/claude-skills"
echo ""
echo "  Next steps:"
echo "  1. Open the link above to confirm everything looks right"
echo "  2. Add GitHub Topics: claude anthropic ai-skills seo rankmath wordpress"
echo "  3. Delete this setup.sh file — it's no longer needed"
echo "     rm setup.sh"
echo ""

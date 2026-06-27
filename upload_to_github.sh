#!/bin/bash
# ============================================================
#  🚀 Agentic AI Workflow — GitHub Auto-Upload Script
#  By: Syeda Zainab Kamal | github.com/Zkamal98
#  Usage: bash upload_to_github.sh
# ============================================================

set -e  # Exit immediately if any command fails

# ── Colors for readable output ───────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# ── Config — EDIT THESE ──────────────────────────────────────
GITHUB_USERNAME="Zkamal98"
REPO_NAME="agentic-ai-workflow"
REPO_DESCRIPTION="A fully autonomous AI agent that researches, creates, and publishes LinkedIn content — built on Make.com, Google Gemini, and Picsart AI"
BRANCH="main"
VISIBILITY="public"   # or "private"
# ─────────────────────────────────────────────────────────────

echo ""
echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}${BOLD}║    🤖 Agentic AI — GitHub Upload Automation      ║${NC}"
echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════╝${NC}"
echo ""

# ── Step 1: Check Git is installed ───────────────────────────
echo -e "${YELLOW}[1/7] Checking prerequisites...${NC}"
if ! command -v git &> /dev/null; then
    echo -e "${RED}✗ Git is not installed. Install it from https://git-scm.com${NC}"
    exit 1
fi
if ! command -v gh &> /dev/null; then
    echo -e "${RED}✗ GitHub CLI (gh) is not installed.${NC}"
    echo -e "  Install it from: ${CYAN}https://cli.github.com${NC}"
    echo -e "  Then run: ${CYAN}gh auth login${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Git and GitHub CLI found${NC}"

# ── Step 2: Check GitHub authentication ──────────────────────
echo -e "\n${YELLOW}[2/7] Checking GitHub authentication...${NC}"
if ! gh auth status &> /dev/null; then
    echo -e "${RED}✗ Not authenticated with GitHub CLI.${NC}"
    echo -e "  Run this first: ${CYAN}gh auth login${NC}"
    echo -e "  Choose: GitHub.com → HTTPS → Login with a web browser"
    exit 1
fi
echo -e "${GREEN}✓ GitHub authentication verified${NC}"

# ── Step 3: Initialize git repo ──────────────────────────────
echo -e "\n${YELLOW}[3/7] Initializing local git repository...${NC}"
if [ ! -d ".git" ]; then
    git init
    git checkout -b $BRANCH 2>/dev/null || git branch -m $BRANCH
    echo -e "${GREEN}✓ Git repository initialized${NC}"
else
    echo -e "${GREEN}✓ Git repository already exists${NC}"
fi

# ── Step 4: Stage all files ───────────────────────────────────
echo -e "\n${YELLOW}[4/7] Staging files for commit...${NC}"
git add .
STAGED=$(git diff --cached --name-only | wc -l)
echo -e "${GREEN}✓ $STAGED file(s) staged${NC}"
git diff --cached --name-only | sed 's/^/   📄 /'

# ── Step 5: Commit ────────────────────────────────────────────
echo -e "\n${YELLOW}[5/7] Creating commit...${NC}"
COMMIT_MSG="🚀 Initial release: Agentic AI autonomous content workflow

- Make.com automation blueprint
- Google Gemini AI content generation
- Picsart AI visual creation
- LinkedIn autonomous publishing
- Full setup guide and documentation"

git commit -m "$COMMIT_MSG" || echo -e "${YELLOW}  (Nothing new to commit — already up to date)${NC}"
echo -e "${GREEN}✓ Commit created${NC}"

# ── Step 6: Create GitHub repo (if it doesn't exist) ─────────
echo -e "\n${YELLOW}[6/7] Creating GitHub repository...${NC}"
if gh repo view "$GITHUB_USERNAME/$REPO_NAME" &> /dev/null; then
    echo -e "${YELLOW}  Repository already exists — skipping creation${NC}"
else
    gh repo create "$REPO_NAME" \
        --description "$REPO_DESCRIPTION" \
        --$VISIBILITY \
        --source=. \
        --remote=origin \
        --push
    echo -e "${GREEN}✓ Repository created and pushed!${NC}"
fi

# ── Step 7: Push to GitHub ────────────────────────────────────
echo -e "\n${YELLOW}[7/7] Pushing to GitHub...${NC}"
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git" 2>/dev/null || true
git push -u origin $BRANCH 2>/dev/null || git push origin $BRANCH
echo -e "${GREEN}✓ Code pushed successfully!${NC}"

# ── Done! ─────────────────────────────────────────────────────
echo ""
echo -e "${GREEN}${BOLD}╔══════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}${BOLD}║            ✅ Upload Complete!                   ║${NC}"
echo -e "${GREEN}${BOLD}╚══════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  🔗 Your repo: ${CYAN}https://github.com/$GITHUB_USERNAME/$REPO_NAME${NC}"
echo ""
echo -e "  ${BOLD}Next steps:${NC}"
echo -e "  1. Add your screen recording to the repo (drag & drop on GitHub)"
echo -e "  2. Add Make.com blueprint JSON to /docs folder"
echo -e "  3. Pin the repo on your GitHub profile"
echo -e "  4. Share the link on LinkedIn 🚀"
echo ""

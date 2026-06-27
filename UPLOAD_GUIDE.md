# 🗺️ GitHub Upload — Complete Guide for Zainab

## What's included in your repo package

| File | Purpose |
|------|---------|
| `README.md` | Professional project page (shows on GitHub) |
| `docs/SETUP_GUIDE.md` | Full step-by-step setup instructions |
| `LICENSE` | MIT License |
| `.gitignore` | Prevents secrets/junk from being committed |
| `upload_to_github.sh` | One-command automation script |

---

## 🚀 The Fastest Path (Automated)

**One-time setup (5 min), then one command forever.**

### Install GitHub CLI (once only)

**Windows:**
```
winget install --id GitHub.cli
```
**Mac:**
```
brew install gh
```
**Linux:**
```
sudo apt install gh
```

### Authenticate (once only)
```bash
gh auth login
```
→ Choose: **GitHub.com** → **HTTPS** → **Login with a web browser** → paste the code shown

### Run the upload script
```bash
# Navigate to your project folder
cd path/to/agentic-ai-workflow

# Run the script
bash upload_to_github.sh
```

That's it. Your repo goes live at:
`https://github.com/Zkamal98/agentic-ai-workflow`

---

## 📁 What Files to Add to the Repo

Before running the script, put these in the folder:

| What | Where to put it | Why |
|------|----------------|-----|
| Your screen recording (.mp4) | `/assets/demo.mp4` | Shows the agent in action |
| Make.com blueprint (export as JSON) | `/docs/make-blueprint.json` | Lets others import your workflow |
| Any screenshots of the workflow | `/docs/SCREENSHOTS/` | Visual proof of how it works |

### How to export Make.com blueprint:
1. Open your scenario in Make.com
2. Click the **three dots (...)** menu → **Export Blueprint**
3. Download the `.json` file
4. Rename it `make-blueprint.json` and put it in `/docs/`

---

## 🏷️ After Upload — Make It Pop on GitHub

### 1. Add Topics (tags) to your repo
On GitHub → Your repo → click the ⚙️ gear next to "About":
```
agentic-ai  make-automation  google-gemini  picsart  linkedin-automation
no-code  ai-agent  autonomous-ai  workflow-automation
```

### 2. Pin the repo to your profile
GitHub profile → "Customize your pins" → select this repo

### 3. Add a social preview image
Repo → Settings → scroll to "Social Preview" → upload the Picsart-generated image from your project

---

## ✅ Pre-Upload Safety Checklist

- [ ] No API keys or passwords in any file (the `.gitignore` handles this — but double-check!)
- [ ] Screen recording doesn't show sensitive browser tabs or personal info
- [ ] Make.com blueprint JSON doesn't contain hardcoded API keys (check before exporting)
- [ ] LinkedIn profile URL in README points to the right account

---

## 🌐 Manual Upload Option (No Terminal)

If you prefer not to use the script:
1. Go to [github.com/new](https://github.com/new)
2. Repo name: `agentic-ai-workflow`
3. Set to **Public**, check "Add README" → **Create**
4. Click **"uploading an existing file"**
5. Drag and drop all your files
6. Click **"Commit changes"**

---

*Script questions? The upload_to_github.sh file is well-commented — open it in any text editor.*

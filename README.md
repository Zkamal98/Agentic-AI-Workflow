# 🤖 Agentic AI — Autonomous Content Research & Publishing Workflow

> **Not a chatbot. Not a script. A fully autonomous AI agent that researches, creates, and publishes content — all by itself.**

[![Made with Make.com](https://img.shields.io/badge/Built%20on-Make.com-6C3BFF?style=flat-square&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0id2hpdGUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMTIiLz48L3N2Zz4=)](https://make.com)
[![Powered by Gemini](https://img.shields.io/badge/AI-Google%20Gemini-4285F4?style=flat-square&logo=google)](https://ai.google.dev)
[![Visuals by Picsart](https://img.shields.io/badge/Visuals-Picsart%20AI-FF4B4B?style=flat-square)](https://picsart.com)
[![LinkedIn Auto-Publisher](https://img.shields.io/badge/Publishes%20to-LinkedIn-0A66C2?style=flat-square&logo=linkedin)](https://linkedin.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

---

## 🚀 What This Is

This project is a **fully autonomous AI agent workflow** built on [Make.com](https://make.com) that:

1. 🔍 **Perceives** — Scans the web for the latest Agentic AI news & trends
2. 🧠 **Reasons** — Google Gemini AI thinks and crafts a sharp, on-brand post prompt
3. 🎨 **Creates** — Picsart generates a stunning visual with zero human input
4. 📤 **Acts** — Publishes the post directly to LinkedIn. Autonomously.

No commands. No supervision. No manual work.

This is what **Agentic AI actually looks like** in the real world.

---

## 📐 Architecture Overview

```
┌─────────────────────────────────────────────────────┐
│                  AGENTIC AI WORKFLOW                │
│                                                     │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐      │
│  │  Web     │───▶│  Google  │───▶│ Picsart  │      │
│  │  Search  │    │  Gemini  │    │  AI Art  │      │
│  │  (Scan)  │    │ (Reason) │    │ (Create) │      │
│  └──────────┘    └──────────┘    └────┬─────┘      │
│                                       │             │
│                               ┌───────▼──────┐     │
│                               │   LinkedIn   │     │
│                               │  Auto-Post   │     │
│                               │   (Publish)  │     │
│                               └──────────────┘     │
└─────────────────────────────────────────────────────┘
```

---

## 🛠️ Tech Stack

| Tool | Role |
|------|------|
| **Make.com** | Workflow automation & orchestration engine |
| **Google Gemini AI** | Content reasoning & prompt generation |
| **Picsart AI** | Autonomous visual generation |
| **LinkedIn API** | Direct post publishing |
| **Web Search Module** | Real-time trend scanning |

---

## ⚙️ How It Works — Step by Step

### Step 1 — 🔍 Perceive (Web Research)
The agent uses Make.com's HTTP/Web Search module to autonomously scan for trending Agentic AI content. It pulls headlines, summaries, and engagement signals — no human query needed.

### Step 2 — 🧠 Reason (Google Gemini)
Raw trend data is passed to **Google Gemini**, which:
- Analyzes what's resonating in the space
- Decides on the most valuable angle
- Crafts a full LinkedIn post + image generation prompt

### Step 3 — 🎨 Create (Picsart AI)
Gemini's image prompt is sent to **Picsart's AI art generation API**, which returns a high-quality, on-brand visual — entirely machine-generated.

### Step 4 — 📤 Act (LinkedIn Publishing)
The post (text + image) is automatically published to LinkedIn via the **LinkedIn API module** in Make.com. The agent acts without waiting for approval.

---

## 📁 Project Structure

```
agentic-ai-workflow/
├── README.md                  ← You are here
├── LICENSE
├── docs/
│   ├── SETUP_GUIDE.md         ← Full setup instructions
│   ├── WORKFLOW_WALKTHROUGH.md ← Detailed module breakdown
│   └── SCREENSHOTS/           ← Make.com blueprint screenshots
├── assets/
│   └── workflow-diagram.png   ← Architecture visual
└── .github/
    └── workflows/             ← (Optional) CI/CD configs
```

---

## 🚦 Getting Started

### Prerequisites
- A [Make.com](https://make.com) account (free tier works for testing)
- Google AI Studio API key → [Get one here](https://aistudio.google.com/app/apikey)
- Picsart API key → [Get one here](https://picsart.io/api)
- LinkedIn Developer App with `w_member_social` permission

### Quick Setup
See the full **[Setup Guide →](docs/SETUP_GUIDE.md)** for step-by-step instructions.

1. Import the Make.com blueprint (JSON file in `/docs`)
2. Connect your API credentials in Make.com's connection manager
3. Configure your LinkedIn profile ID
4. Set your preferred posting schedule
5. Activate the scenario — the agent runs itself from here

---

## 🧠 The Bigger Picture

We've moved past **"AI that assists."**

This is AI that **executes.**

| Old Model | Agentic AI |
|-----------|------------|
| You prompt → AI responds | AI perceives → AI decides → AI acts |
| Manual trigger | Autonomous trigger |
| Single-step | Multi-step reasoning loop |
| Output: text | Output: real-world action |

The shift from prompt-based AI to **Agentic AI** is the biggest leap in tech right now. This project is a working demonstration of that shift.

---

## 📸 Demo

> *Screen recording of the live workflow running autonomously — from web scan to LinkedIn post.*

*(See screen recording in project assets)*

---

## 🤝 Contributing

Ideas, improvements, and forks are welcome. If you build something on top of this:
1. Fork the repo
2. Create a feature branch (`git checkout -b feature/your-idea`)
3. Commit your changes (`git commit -m 'Add: your feature'`)
4. Push and open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see [LICENSE](LICENSE) for details.

---

## 👩‍💻 Author

**Syeda Zainab Kamal**
- 🔗 [LinkedIn](https://linkedin.com/in/your-profile)
- 🐙 [GitHub](https://github.com/Zkamal98)

---

> *"We've moved past AI that assists. This is AI that executes."*

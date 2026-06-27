# 📋 Setup Guide — Agentic AI Workflow

> Complete step-by-step instructions to get your autonomous AI agent running in under 30 minutes.

---

## 🔑 Step 1 — Gather Your API Keys

You'll need 4 credentials. Get them all before opening Make.com.

### 1.1 — Google Gemini API Key
1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Click **"Create API Key"**
3. Copy and save it securely (you'll paste it in Make.com)

### 1.2 — Picsart API Key
1. Go to [Picsart for Developers](https://picsart.io/api)
2. Sign up / log in and create a new app
3. Copy your **API Key** from the dashboard

### 1.3 — LinkedIn API Access
1. Go to [LinkedIn Developer Portal](https://www.linkedin.com/developers/apps)
2. Create a new app
3. Under **Products**, request access to **"Share on LinkedIn"** and **"Sign In with LinkedIn"**
4. In **Auth**, note down your `Client ID` and `Client Secret`
5. Add `https://www.make.com/oauth/cb/linkedin2` as a Redirect URL
6. Required scopes: `openid`, `profile`, `w_member_social`

### 1.4 — Make.com Account
1. Sign up at [make.com](https://make.com) (free tier is enough to start)
2. No API key needed — you'll connect via OAuth inside the app

---

## 🏗️ Step 2 — Set Up Make.com Scenario

### 2.1 — Create a New Scenario
1. Log in to Make.com
2. Click **"Create a new scenario"**
3. Name it: `Agentic AI - LinkedIn Publisher`

### 2.2 — Add the Modules (in order)

#### Module 1: Scheduler (Trigger)
- Search for **"Schedule"**
- Set interval: every 24 hours (or your preferred cadence)
- This is what kicks off the autonomous loop

#### Module 2: HTTP — Web Search
- Search for **"HTTP" → "Make a Request"**
- Configure to hit a search/news API (e.g., [NewsAPI](https://newsapi.org) or [SerpAPI](https://serpapi.com))
- Query: `"Agentic AI" OR "AI Agents" latest`
- Parse the response: extract top 3-5 article titles + snippets

#### Module 3: Google Gemini — Generate Content
- Search for **"HTTP" → "Make a Request"** (Gemini uses REST)
- URL: `https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=YOUR_KEY`
- Method: POST
- Body (JSON):
```json
{
  "contents": [{
    "parts": [{
      "text": "Based on these trending AI topics: {{2.articles}}\n\nWrite a compelling LinkedIn post about Agentic AI. Make it insightful, hook-driven, and end with a question. Also write a short image generation prompt for a futuristic AI visual."
    }]
  }]
}
```

#### Module 4: Picsart — Generate Image
- Search for **"HTTP" → "Make a Request"**
- URL: `https://genai-api.picsart.io/v1/text2image`
- Method: POST
- Headers: `x-picsart-api-key: YOUR_KEY`
- Body: pass Gemini's image prompt from Module 3

#### Module 5: LinkedIn — Create a Post
- Search for **"LinkedIn"** and connect your account via OAuth
- Action: **"Create a Post"**
- Visibility: `PUBLIC`
- Text: Map Gemini's generated post text
- Media: Map Picsart's returned image URL

---

## ⚙️ Step 3 — Connect All Credentials

In Make.com, for each module that needs auth:

1. Click the module → **"Add"** next to Connection
2. For HTTP modules: add API keys in the Headers field
3. For LinkedIn: click **"Sign in with LinkedIn"** and authorize
4. Test each connection with the **"Run once"** button

---

## 🧪 Step 4 — Test the Workflow

1. Click **"Run once"** at the bottom left
2. Watch each module execute (green checkmarks = success)
3. Check your LinkedIn profile — the post should appear live
4. If any module fails, click the red bubble to see the error

Common issues:
- **LinkedIn 403**: Recheck your app's products/permissions
- **Gemini empty response**: Check your API key + request body format
- **Picsart timeout**: The image gen can take 15-30 seconds; increase timeout to 60s

---

## 🕐 Step 5 — Activate & Schedule

1. Toggle the scenario **ON** (top left switch)
2. Set your schedule (daily, twice a week — your call)
3. Done. The agent runs itself from here.

---

## 📊 Monitoring

- **Execution history**: Make.com → Your scenario → "History" tab
- **LinkedIn analytics**: Check post impressions 24h after publish
- **Error notifications**: Settings → Notifications → Email on error

---

## 🔧 Customization Tips

| What to change | Where |
|----------------|-------|
| Topic focus | Module 2: edit the search query |
| Post tone/style | Module 3: edit the Gemini prompt |
| Image style | Module 3: add style keywords to image prompt |
| Posting time | Module 1: adjust the scheduler |
| Posting frequency | Module 1: change the interval |

---

## 🆘 Troubleshooting

**"Scenario won't activate"**
→ Make sure all modules have valid connections (no red icons)

**"LinkedIn post not showing"**
→ Verify `w_member_social` scope is approved in your LinkedIn app

**"Gemini returns 400"**
→ Check that your request body is valid JSON and the API key is active

---

*Back to [README →](../README.md)*

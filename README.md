# JobTrack — Universal Job Application Tracker

Track job applications from **LinkedIn, Indeed, Glassdoor, ZipRecruiter, Monster, Dice, Naukri, Wellfound, Lever, Greenhouse, and Workday** — all in one dashboard.

## What's included

- **React dashboard** — Kanban board, list view, stats, interview countdowns, overdue alerts
- **REST API** (Express + PostgreSQL) — stores all job data
- **Chrome extension** — injects a "Track Job" button on every supported job board

---

## Setup on Replit (after importing from GitHub)

### 1. Open the Shell and run:

```bash
bash setup.sh
```

This installs all dependencies and runs the database migration automatically.

### 2. Add a Secret

Go to **Secrets** (lock icon in the sidebar) and add:
- Key: `SESSION_SECRET`
- Value: any random string (e.g. `myjobtrackersecret123`)

### 3. Start the servers

Create two Workflows (or open two Shell tabs) and run:

**API Server:**
```bash
pnpm --filter @workspace/api-server run dev
```

**Web Dashboard:**
```bash
pnpm --filter @workspace/job-tracker run dev
```

### 4. Update the Chrome extension

Once deployed, update `API_BASE` in `chrome-extension/background.js` and `chrome-extension/content.js` with your new Replit deployment URL.

---

## Tech stack

- **Frontend:** React + Vite + Tailwind CSS + shadcn/ui
- **Backend:** Express + Drizzle ORM + PostgreSQL
- **Monorepo:** pnpm workspaces
- **Extension:** Chrome Manifest V3

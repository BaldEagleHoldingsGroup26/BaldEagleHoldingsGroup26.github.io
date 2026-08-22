# ePortfolio — {{FULL_NAME}}

Academic and career ePortfolio. Static site, no build step, no dependencies.
Hosted on GitHub Pages.

**Live:** https://{{GITHUB_USERNAME}}.github.io/

---

## Rubric coverage (INFO 1120 — ePortfolio Part 1)

| Requirement | Points | Where it lives |
|---|---|---|
| Name | 1 | `index.html` → `<h1>` in the hero |
| Photo | 3 | `assets/photo.jpg` |
| Intro paragraph | 1 | `index.html` → About section |
| "Me in 30 Seconds" video | 5 | YouTube unlisted, embedded in the Video section |
| ≥1 academic/career item | — | Projects section (homelab) + résumé + LinkedIn |

---

## Setup (do these in order)

### 1. Set your commit identity BEFORE the first commit

Every commit permanently records the email you commit with, and this repo is
public. Use GitHub's no-reply address so your real inbox isn't scraped.

Get your no-reply address from **GitHub → Settings → Emails**. It looks like
`1234567+username@users.noreply.github.com`.

```bash
cd portfolio
git init
git config user.name  "Your Name"
git config user.email "1234567+username@users.noreply.github.com"
```

`git config` without `--global` writes to `.git/config`, so this applies to
this repo only and won't disturb the identity you use on your servers.

### 2. Add your photo and résumé

```
assets/photo.jpg     # square crop, ~600x600, under 500 KB
assets/resume.pdf    # optional but it's a free "career item"
```

A square source image matters: the CSS crops with `object-fit: cover`, so a
wide photo gets its sides chopped off.

### 3. Fill in the placeholders

Every editable value is a `{{TOKEN}}`. List them:

```bash
grep -oh '{{[A-Z_0-9]*}}' index.html README.md | sort -u
```

Edit `index.html` by hand, or use `fill.sh` (see below). When you're done,
this must print `0`:

```bash
grep -c '{{' index.html
```

If it prints anything else, you have unreplaced placeholders that will show up
as literal `{{BRACES}}` on your live site in front of your instructor.

### 4. Create the repo and push

The repo **must** be named `<yourusername>.github.io` to get the clean root URL.

With the GitHub CLI:

```bash
gh repo create <yourusername>.github.io --public --source=. --remote=origin
git add -A
git commit -m "Initial portfolio shell"
git branch -M main
git push -u origin main
```

Without `gh` — create the repo in the browser first, then:

```bash
git remote add origin git@github.com:<yourusername>/<yourusername>.github.io.git
git add -A
git commit -m "Initial portfolio shell"
git branch -M main
git push -u origin main
```

### 5. Enable Pages

**Settings → Pages → Build and deployment → Source: Deploy from a branch →
Branch: `main` / `(root)` → Save.**

For a repo named `username.github.io`, Pages is usually on automatically.
First deploy takes **1–10 minutes**. Watch the **Actions** tab — a green check
means it's live.

### 6. Verify before you submit

This is the step people skip and it's the one that costs points.

Open the live URL in a **private/incognito window** (so you're logged out —
that's what your instructor sees):

- [ ] Page loads at `https://<username>.github.io/` — not a 404
- [ ] Your **photo** displays (not the initials fallback) — this is 3 points
- [ ] The **video plays** while logged out — Unlisted works, **Private does not**
- [ ] No literal `{{TOKENS}}` visible anywhere on the page
- [ ] Résumé and LinkedIn links open
- [ ] Looks correct on a phone

Then submit the URL in Canvas under **Enter Web URL**.

---

## Growing this for Parts 2–5

The assignment runs all term. Each part adds to the same site:

| Part | Due | Add |
|---|---|---|
| 2 — Education + Goals | Sep 19 | New `<section>` after About |
| 3 — Projects + Skills | Oct 9 | More `<article class="card">` blocks in Projects |
| 4 — Peer Review | Nov 6 | Whatever the reviewer flags |
| 5 — Final Polish | Dec 6 | Cleanup pass |

Commit each part separately. A visible commit history showing steady work over
a semester is itself a thing employers look at.

---

## Structure

```
.
├── index.html        # entire site — HTML + CSS in one file, no dependencies
├── README.md
├── .gitignore
├── fill.sh           # optional placeholder-replacement helper
└── assets/
    ├── photo.jpg
    └── resume.pdf
```

Single file is deliberate: nothing to build, nothing to break, and it loads
instantly. Split it into separate CSS when the site actually gets big enough
to justify it — not before.

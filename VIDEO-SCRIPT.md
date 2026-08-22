# "Me in 30 Seconds" — script frame

**This clears three graded items with one recording:**

1. ePortfolio Part 1 → the 5-point video criterion
2. Discussion Checkpoint 1 → Reply to Topic (late since Aug 20)
3. Unblocks Discussion Checkpoint 1 → Required Replies (2), **due tonight**

---

## Ground rule

I'm giving you the **beat structure and word budget**, not your lines. Two
reasons, and only one of them is the honor code:

- It's graded work about you. Reading my sentences off a screen is the thing
  the assignment exists to prevent, and it's obvious on camera — people who
  read sound like they're reading.
- I don't know your facts. I'd have to invent them, and inventing details
  about your own life for a video with your face on it is a bad trade.

Write the beats in your own words, say them out loud twice, then record. Bullet
points on a sticky note beside the camera — not a full script.

---

## The 30-second structure

30 seconds is **75–90 spoken words**. That's shorter than it feels. Five beats:

| # | Beat | Seconds | Words | What goes here |
|---|---|---|---|---|
| 1 | Name + who you are | 0–4 | ~12 | Full name, student at UVU, what you're studying or exploring |
| 2 | Where you're coming from | 4–12 | ~22 | The concrete thing you already do — you run Linux servers, you use Git daily, you build things |
| 3 | Why you're here | 12–20 | ~22 | What you want out of an IT education. Be specific, not "I love technology" |
| 4 | One human detail | 20–25 | ~14 | 3D printing, or whatever's actually true. This is what people remember |
| 5 | The hook | 25–30 | ~14 | For the discussion: a question or invitation to classmates |

### Beat notes

**Beat 1 — say your name clearly.** It's 1 rubric point on the page and it's
the first thing your instructor matches to the roster. Don't mumble it.

**Beat 2 is your unfair advantage.** Most people in a 1000-level intro course
open with "I've always been interested in computers." You actually administer
servers. Say the concrete thing — "I run a handful of Linux boxes at home and
manage them over SSH" — and you are immediately the most credible person in
the thread. Specific beats enthusiastic, every time.

**Beat 3 — avoid the dead phrases.** "I'm passionate about technology,"
"technology is always changing," "I want to help people with technology."
Those are filler and everyone uses them. Say what you actually want:
a credential, an internship, to stop guessing at things you learned by
trial and error. Real reasons are more interesting than noble ones.

**Beat 4 — the detail people reply to.** Discussion replies are graded, and
your classmates need something to grab onto. A hobby, a weird project, a
2am server outage story. One sentence.

**Beat 5 — the ask.** This is what makes it a *networking* video and not just
an intro. End with a genuine question: "If anyone else here runs a homelab or
is going the sysadmin route, say so — I'd like to know who I'm in this program
with." That invites the replies you need.

---

## Worked example (structure only — do NOT read this aloud)

This is here so you can see the *shape* and the pacing. Every fact in it is a
placeholder. Rewrite all of it.

> Hi, I'm [FULL NAME], first-year IT student at UVU. **(4s)**
>
> I got here backwards. I've been running [NUMBER] Linux servers at home for
> [HOW LONG]. All over SSH, everything in Git. Nobody taught me. I learned by
> breaking things. **(14s)**
>
> But self-taught hits a ceiling. I'm here for what I can't get by trial and
> error, plus a degree that gets me [SPECIFIC GOAL]. **(22s)**
>
> Outside class I'm into [REAL HOBBY]. Most of my projects start there. **(26s)**
>
> If you run your own hardware, say so in your reply. I want to know who else
> is in this program. **(30s)**

Count: 93 words. Trim to your natural pace.

### Why it's punctuated like that

The first version of this example had three em dashes in it. Em dashes are the
most reliable marker of machine-written prose, and in a script they're worse
than useless — you can't hear one. Either you pause where it sits and sound
odd, or you read through it and the punctuation was never doing anything.

Spoken language runs on short declaratives. "Nobody taught me. I learned by
breaking things." is four words and five words. That rhythm is unfakeable and
it's most of what makes a delivery sound like a person instead of a recital.

Three other things I cut, worth knowing so you don't reintroduce them:

- **Triplets.** "Networking, security, and enterprise systems" is three items
  because three sounds finished, not because you counted. Name one thing you
  actually want, or four things unevenly.
- **Trailing clauses.** "...[HOBBY], which is where a lot of my projects come
  from" — that dangling "which" tail is a writing habit. Use a period.
- **Clever openers.** The line was "I came into this a little sideways." It's
  a nice sentence, which is the problem. It sounds workshopped. "I got here
  backwards" does the same job and sounds like a person saying it.

---

## Recording — 10 minutes, not an hour

**Setup**

- Phone, **landscape**, propped at eye level. Not handheld, not looking down at
  it — the up-the-nose angle is the single most common own-goal.
- **Face a window.** Free, flattering, better than any ring light. Never sit
  with a window behind you or you'll be a silhouette.
- Quiet room. Phone mic is fine at arm's length; it is not fine across a room.
- Plain wall behind you. Not your unmade bed.

**Performance**

- Look at the **lens**, not at your own face on the screen.
- Two or three takes maximum. Take 2 is almost always the one. By take 8 you
  sound exhausted and it shows.
- Slightly more energy than feels natural. Cameras flatten you out.

**Don't over-produce it.** No intro music, no title cards, no editing. The
rubric says "short video," which means "did you show up on camera." A tight
30 seconds of you talking straight to the lens outscores three minutes of
production every time.

---

## Hosting — the part that quietly costs people 5 points

**Upload to YouTube as UNLISTED.**

- **Unlisted** = anyone with the link can watch, doesn't appear in search.
  This is what you want.
- **Private** = only accounts you explicitly invite can watch. Your instructor
  opens it, sees "Video unavailable," and you get a zero on a video you
  actually made.

Same trap on Google Drive: default sharing is restricted. If you use Drive
instead, set link sharing to **Anyone with the link → Viewer**.

**Do not commit the video file to the repo.** GitHub has a 100 MB hard limit
per file and Pages has bandwidth limits. `.gitignore` already blocks video
extensions for you.

Grab the 11-character ID from the URL — in `https://youtu.be/dQw4w9WgXcQ`
the ID is `dQw4w9WgXcQ` — and drop it into `YOUTUBE_ID` in `fill.sh`.

**Then verify in a private/incognito window.** Logged out is what your
instructor sees. If it plays there, you're done.

---

## Reusing it for the discussion

Post the same video to Discussion Checkpoint 1 with a short text intro under
it. Then the 2 required replies are due tonight — reply to people whose
intros gave you something real to respond to, and ask them a follow-up
question. "Great intro, welcome to the class!" is a reply that earns nothing.

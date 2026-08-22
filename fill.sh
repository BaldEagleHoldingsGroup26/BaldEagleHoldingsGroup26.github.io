#!/usr/bin/env bash
#
# fill.sh — replace the {{TOKENS}} in index.html with your real values.
#
# HOW TO USE
#   1. Edit the values between the quotes below. Keep the quotes.
#   2. chmod +x fill.sh && ./fill.sh
#   3. grep -c '{{' index.html      # must print 0
#
# It writes index.html in place but keeps a backup at index.html.bak, so if you
# fat-finger something you can just: mv index.html.bak index.html

set -euo pipefail

# ---------------------------------------------------------------- your values
FULL_NAME="Steve Carlsen"
INITIALS="SC"
TAGLINE="Information Technology Student · Utah Valley University"
CITY_STATE="Woods Cross, UT"
EMAIL=""
GITHUB_USERNAME="github@baldeagleholdingsgroup.com"
#LINKEDIN_URL="https://www.linkedin.com/in/yourprofile"
YOUTUBE_ID="voxjKEwfG5E"

# Write these in your own words — they're graded.
INTRO_PARAGRAPH="I am a 2nd year cyberseccurity student that enjoys fixing and maintaining servers. I self host an ESXI box with 11 servers. I self host everything to run my business. Out side of work and homelab stuff, I am just a crazy hockey fan and that enjoys spending time with my wife and hanging out watching hockey games."

HOMELAB_SUMMARY="I host and maintain 11 server that provide different jobs for my business."
HOMELAB_POINT_1="Did you know the Fedora and RHEL only have a 3 - 5 year life span before Red Hat decides not to provide updates."
HOMELAB_POINT_2="There is a server package that will provide 10 years of life before it dies, I can't remember the name now...if your interested, ping me."
HOMELAB_POINT_3="I use fedora because it's the easiest to access because it is opensource. "
HOMELAB_LEARNED="If you choose to self-host, you need to learn patience."

DEV_SKILL_EXTRA="Bash scripting"
# ----------------------------------------------------------------------------

TARGET="index.html"

if [[ ! -f "$TARGET" ]]; then
  echo "error: $TARGET not found. Run this from the repo root." >&2
  exit 1
fi

cp "$TARGET" "$TARGET.bak"

# Why this loop instead of one long sed command:
#   - ${!name} is an indirect expansion — it reads the variable *named* by $name.
#   - The nested ${VALUE//&/\\&} escapes ampersands. In sed's replacement text a
#     bare & means "the whole thing that matched", so an unescaped & in your
#     name or URL would silently corrupt the output. Same for the | delimiter.
#   - We use | as the delimiter instead of / because URLs are full of slashes.
for name in FULL_NAME INITIALS TAGLINE CITY_STATE EMAIL GITHUB_USERNAME \
            LINKEDIN_URL YOUTUBE_ID INTRO_PARAGRAPH HOMELAB_SUMMARY \
            HOMELAB_POINT_1 HOMELAB_POINT_2 HOMELAB_POINT_3 \
            HOMELAB_LEARNED DEV_SKILL_EXTRA; do
  value="${!name}"
  value="${value//&/\\&}"
  value="${value//|/\\|}"
  sed -i.tmp "s|{{$name}}|$value|g" "$TARGET"
  rm -f "$TARGET.tmp"
done

remaining=$(grep -c '{{' "$TARGET" || true)

if [[ "$remaining" -eq 0 ]]; then
  echo "OK — all placeholders replaced. Backup at $TARGET.bak"
else
  echo "WARNING — $remaining placeholder(s) still unreplaced:" >&2
  grep -o '{{[A-Z_0-9]*}}' "$TARGET" | sort -u >&2
  exit 1
fi

if grep -q 'REPLACE ME' "$TARGET"; then
  echo
  echo "WARNING — 'REPLACE ME' is still in the page. Those are the graded"
  echo "parts you have to write yourself. Fix them before you push." >&2
fi

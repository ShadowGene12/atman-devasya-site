# Atman Devasya website

Everything you will ever edit is inside the `content` folder. You never need to touch `index.html`.

## What each file does

| File | What's in it |
|---|---|
| `content/chapters/*.txt` | The chapters, one plain text file each |
| `content/site.json` | Title, chapter list (with each chapter's hook line and "Previously" recap), the home page teaser lines, release date and cadence, author bio, contact and email-list settings |
| `content/characters.json` | Character files and spoilers |
| `content/world.json` | Map locations and lore terms |
| `content/map.json` | Map coastlines, including the southern landmass. Generated, do not edit |
| `content/artifact-box.jpg` | The Artifact art on the home page and in link previews |

## Chapter text format

- Leave one blank line between paragraphs.
- A line starting with `# ` is a scene heading, e.g. `# Back In Delhi`
- A line starting with `> ` is an italic narrator passage, e.g. the opening of the Prologue.
- A line with just `***` is a scene break (a small sigil divider). Use it for time jumps inside a part.
- Each `# ` heading becomes a "Part n of N" card, so long chapters read in bites.

## Adding Chapter III

1. Save the chapter as `content/chapters/chapter-03.txt`.
2. In `content/site.json`, add one entry to `"chapters"`:
   ```json
   { "id": "ch3", "file": "chapter-03.txt", "label": "Chapter III", "title": "Your Title", "where": "Place · 2204" }
   ```
   Add `"hook": { "text": "one line from the chapter", "who": "Speaker" }` and `"recap": "two lines on what happened before"`.
3. Change `"upcoming"` to Chapter IV, and set its `"date"` once you know it (or delete the block).
4. Re-upload the folder. Done.

## Home page

The scroll story on the home page reads `site.json` → `home`: the cold-open line, the 2189 lines, the four Artifact lines, the 2204 lines and the Abhimanyu lines. Swap any line for another from the book. `cadence` (e.g. "New chapter every second Sunday") shows under the chapter list once filled.

## Characters

Each character has `quote`, `bio`, `role` and optional `element`, `weapon`, `form`, `origin`, `first`. `group` is `guard` (Shadow Guard) or `others`.

Optional spoilers: add `"spoiler": { "after": "ch2", "text": "..." }` and it stays sealed until the reader finishes Chapter II on that device.

## Map locations

Add an entry to `"places"` in `world.json` with real latitude/longitude. `"kind"` decides the marker: `city`, `ruin`, `event`, `site`, `power`, `titan`.

## Turning on the live features

- **Email list (Kit, free up to 10,000 subscribers):** create a Kit account, make a new inline form, and open its HTML embed code. In that code, copy the form's `action="https://app.kit.com/forms/…/subscriptions"` address into `site.json` → `signup.formAction`. Leave `signup.emailField` as `email_address`. Turn on double opt-in so every signup confirms by email.
- **Contact form:** create a free Formspree form, paste its endpoint into `site.json` → `contact.formAction`.
- **Author:** fill `site.json` → `author` (name, photo path, lines, why). Put the photo at `content/author.jpg` and set `"photo": "content/author.jpg"`.
- **Draft strip:** set `"draft": false` in `site.json` before launch.

## Hosting (Cloudflare Pages, free)

1. Cloudflare dashboard → Workers & Pages → Create → Pages → Upload assets.
2. Drag in this whole folder. You get a free `*.pages.dev` address.
3. Custom domain: buy it (Cloudflare Registrar or any registrar), then Pages project → Custom domains → add it.
4. To update: open the project → Create new deployment → upload the folder again.

## Running locally

Opening `index.html` directly by double-clicking will NOT work because modern browsers block cross-origin file reads for local JSON files.

Use any of these:
- **Windows 1-Click**: Double-click `start.bat` in this folder. It launches the local server and opens your browser to http://localhost:8000.
- **Node.js**: Run `node server.js` in this folder and open http://localhost:8000.
- **Python**: Run `python -m http.server 8000` and open http://localhost:8000.

## Professional Features Built-in

- **Universal Search & Command Palette (`Ctrl + K`)**: Instantly search chapters, scenes, characters, map locations, and lore terms.
- **4 Reading Themes**: Night Sky (Dark), Midnight (OLED pitch black), Ancient Parchment (warm Sepia for long reading sessions), and Ash Paper (Light).
- **Interactive Reader Experience**:
  - Parts & Scene Drawer (jump directly to any section of a chapter).
  - Distraction-Free Zen Focus Mode.
  - Font choice (Literary Serif vs. Modern Sans-serif).
  - Fine-grained font size adjuster (A- / A+).
  - Automatic reading position memory (remembers where you stopped and lets you resume).
  - Dynamic reading time remaining indicator.
  - "Mark as Read" status toggle and chapter link sharing.
- **Interactive Atlas (SVG World Map)**:
  - Mouse wheel zoom in/out and drag-to-pan.
  - On-screen zoom controls (`+`, `−`, `↺ Reset View`).
  - Marker category filters (Cities, Ruins, Power Seats, Events).
  - Direct links from locations to the chapters featuring them.
- **Character Codex**:
  - Filter by Faction (The Shadow Guard, Beyond the Guard) and Element (Ice, Heat, Light, Human, Unknown).
  - Persistent spoiler reveals (unlocked spoilers stay unlocked on the device).
- **Atmospheric Sound Engine**:
  - Optional ambient cosmic drone synthesizer powered purely by Web Audio API (zero audio files to download, toggleable via sound icon in the navbar).
- **Responsive Mobile Navigation**:
  - Dedicated mobile bottom bar for effortless navigation on phones and tablets.


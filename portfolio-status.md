# Portfolio Status
**ginamarieivy.github.io** — Last updated: May 2026

---

## 1. Tech Stack & Project Architecture

**Stack**
- Pure HTML / CSS / Vanilla JavaScript — no frameworks or build tools
- Hosted on **GitHub Pages** at `ginamarieivy.github.io`
- Fonts: `Fraunces` (display) and `Gabarito` (body) via Google Fonts
- CSS custom properties for all colors, spacing, and typography

**Repo**
- Working repo: `Documents/GitHub/ginamarieivy.github.io/` (this is the source of truth — edit here, not the old Desktop folder)
- GitHub Desktop → commit → push to deploy

**File Structure**
```
/
├── index.html                        # Homepage
├── about.html                        # About page
├── css/style.css                     # Global stylesheet
├── js/main.js                        # JS: scroll animations, nav, email obfuscation
├── rtw/index.html                    # Ready to Work case study
├── hog-queen/index.html              # The Hog Queen case study
├── category-campaigns/
│   ├── index.html                    # Category Campaigns overview
│   ├── careers-in-care.html          # Sub-campaign: Careers in Care
│   ├── transportation.html           # Sub-campaign: Better Work in Transportation
│   └── finance.html                  # Sub-campaign: Careers in Finance
├── whats-new/index.html              # What's New at Indeed case study
├── costco/index.html                 # Costco Ben Party case study
├── images/
│   ├── heroes/                       # Hero images (desktop + mobile versions)
│   ├── thumbnails/                   # Homepage project row thumbnails (1400×1600px)
│   ├── category/                     # All Category Campaigns images
│   ├── rtw/                          # RTW images
│   ├── costco/                       # Costco images
│   └── (misc)                        # Hog Queen, What's New images
```

---

## 2. Features Successfully Completed

### Global
- ✅ Email obfuscation via JS runtime assembly (no plain-text email in HTML source)
- ✅ Scroll-triggered fade-up animations on all sections
- ✅ Sticky nav with scroll-triggered background
- ✅ Mobile-responsive nav
- ✅ Favicon

### Homepage (`index.html`)
- ✅ Hero with tagline: *"Brand systems. Art direction. Damn good graphic design."*
- ✅ SVG down-arrow scroll indicator
- ✅ 5 project rows (RTW, Hog Queen, Category Campaigns, What's New, Costco)
- ✅ Side-by-side project row layout preserved on mobile (65vw height, tighter padding)
- ✅ Project row thumbnails all at 1400×1600px in `images/thumbnails/`
- ✅ Sub-pixel gap between rows fixed (`margin-bottom: -1px`)
- ✅ Hover glow removed from "View Work" button

### About Page (`about.html`)
- ✅ BY DAY / BY NIGHT bio copy in amber
- ✅ Headshot in hero
- ✅ Download Resume button (flush left)
- ✅ White divider rule between hero and body
- ✅ Skills & Tools grid
- ✅ Experience and Awards sections removed

### Case Study Pages (all)
- ✅ Full-width hero images at 2560×1080px (desktop) with mobile crop via `<picture>` tags
- ✅ Mobile hero images for all 8 pages in `images/heroes/`
- ✅ Text interspersed with images (no wall-of-text layout)
- ✅ "Next Project →" footer links chaining all case studies
- ✅ Meta bar: Role, Client, Year, Deliverables

### Ready to Work (`rtw/`)
- ✅ Vimeo embed replacing static hero image (video ID: 1188846942)
- ✅ RTW-Social.png added to body
- ✅ Billboard image full-width at bottom
- ✅ Stats bar, partner tags, 2-col event photos

### The Hog Queen (`hog-queen/`)
- ✅ THQ-Title-Design-Final.png as title image
- ✅ 4-square end credits grid with "End Credits" caption
- ✅ THQ-program.png with caption
- ✅ Maryland Film Festival updated to 2026
- ✅ Badge order: Short Horror Film first, Screening Now second
- ✅ "Currently Screening" banner removed

### Category Campaigns (`category-campaigns/`)

**Main page (`index.html`)**
- ✅ Overview: *"One system. 4 industries. Unmistakably Indeed."*
- ✅ Stats bar above `Category-Layout-Long.jpg` (centered, 65% width)
- ✅ 3 campaign cards (purple/amber/teal) linking to sub-pages
- ✅ Retail acknowledged: designed but never launched note
- ✅ Art Direction blurb for photoshoots
- ✅ Design System section with `Category-Layout-Long.jpg` at 65% width

**Careers in Care (`careers-in-care.html`)**
- ✅ Purple hero gradient + mobile hero image
- ✅ `careers-in-care-logo-hero.png` below deliverables bar
- ✅ Vimeo anthem video (ID: 1189070136)
- ✅ Photoshoot filmstrip with arrow navigation (photoshoot-01, photoshoot-02)
- ✅ Display ads in 3-col grid
- ✅ 2024 "Game On" Vimeo video (ID: 1193059648)
- ✅ ADA Magazine image + Lifecycle Email placeholder
- ✅ Off the Clock: `careers-in-care-OTC-original.png` + Step-and-Repeat / Banners / Merch placeholders

**Transportation (`transportation.html`)**
- ✅ Amber hero image + mobile hero image
- ✅ `category-transportation-logo-hero.png` below deliverables bar
- ✅ Vimeo anthem video (ID: 1189071290)
- ✅ Photoshoot filmstrip with arrow navigation (photoshoot-01, photoshoot-02)
- ✅ 2-col billboard images
- ✅ Full-width display ads image

**Finance (`finance.html`)**
- ✅ Teal/green hero image + mobile hero image
- ✅ `category-finance-logo-hero.png` below deliverables bar
- ✅ Vimeo anthem video (ID: 1189072393)
- ✅ Photoshoot filmstrip with arrow navigation (photoshoot-01, photoshoot-02)
- ✅ "Next Project → What's New at Indeed" footer link
- ✅ Social / Display Ad / Print placeholders remaining

### What's New at Indeed (`whats-new/`)
- ✅ Hero image + mobile hero
- ✅ Text/image interspersed layout

### Costco Ben Party (`costco/`)
- ✅ Hero image + mobile hero
- ✅ All image filenames renamed with hyphens (Costco-1 through Costco-4)
- ✅ Costco-2 moved below Creative Process → Costco-4
- ✅ Broken `costco-invite.png` link removed
- ✅ Magazine (Costco-3), signs, Creative Process, Costco-4, Costco-2 flow

### Mobile / Responsive
- ✅ `<picture>` tags on all 8 hero images serving mobile crops at ≤768px
- ✅ Homepage name font scaled down (`clamp(3rem, 17vw, 10rem)`) — fits on one line
- ✅ Project rows stay side-by-side on mobile (not stacked)
- ✅ Campaign cards on Category Campaigns stack cleanly with CTA at bottom
- ✅ Filmstrip arrows work on touch devices

---

## 3. Active Features In Progress

- 🔄 **Category Campaigns image placeholders** — still need real images for:
  - Careers in Care: Social, OOH, Tailored Landing Page, Step-and-Repeat, Event Banners, Merchandise
  - Transportation: Social Asset, Display Ad, Print
  - Finance: Social Asset, Display Ad, Print
- 🔄 **Filmstrip expansion** — all 3 sub-campaign filmstrips are ready to accept more images as they become available

---

## 4. Outstanding Bugs & Known Issues

- ⚠️ **`btn--ghost` CSS class undefined** — the Download Resume button on the About page uses `class="btn btn--ghost"` but `btn--ghost` has no CSS definition. It renders using only the base `.btn` styles. Low priority cosmetic issue.
- ⚠️ **Old working folder still exists** — `Desktop/ginamarie-portfolio/` is now out of sync with the repo. All future edits should be made directly in `Documents/GitHub/ginamarieivy.github.io/`. The old folder should be deleted or archived to avoid confusion.
- ⚠️ **Careers in Care: Lifecycle Email placeholder** — the 2-col grid in the 2024 section has a live ADA Magazine image on the left and a placeholder on the right. Needs a real image when available.
- ⚠️ **Hog Queen placeholder images** — the Hog Queen page was built with `gallery-placeholder` class defined in the stylesheet but no placeholder divs remain in the HTML. Confirmed clean.
- ⚠️ **GitHub Pages CDN cache** — occasional delays (5–15 min) between pushing and seeing changes live. Hard refresh (Cmd+Shift+R) + a minor commit can force a rebuild if needed.

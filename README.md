# Chamindra de Silva — Personal Site

A steampunk/sci-fi themed Jekyll site for Chamindra de Silva: Innovation Director, open source pioneer, FINOS AI Governance Framework Maintainer, FINOS InnerSource SIG Lead, HFOSS concept founder, and Oxford engineer.

Live at: **[chamindra.github.io](https://chamindra.github.io)**

---

## Quick Start

```bash
./launch.sh
```

The script checks for all dependencies (Homebrew, Ruby, Bundler, gems), installs anything missing, then starts the local server with live-reload at **http://localhost:4000**.

---

## Project Structure

```
chamindra-site/
├── launch.sh              ← Start here — installs deps & runs the server
├── Gemfile                ← Jekyll 4.4 + plugins (see Ruby compatibility note)
├── _config.yml            ← Site metadata, author info, plugins
│
├── index.html             ← Blog feed (transmissions) — lists all posts
├── about.md               ← Full biography page
├── publications.md        ← Academic & press publications
│
├── _posts/                ← All blog posts (Markdown)
│   ├── 2026-06-22-*.md   ← AI / InnerSource posts
│   ├── 2026-06-01-finos-ai-governance-framework-maintainer.md
│   ├── 2026-05-12-aigf-use-case-taxonomy-sr11-7.md
│   ├── 2026-04-08-aigf-mcp-server-custom-governance.md
│   └── ...
│
├── _layouts/
│   ├── default.html       ← Site chrome: header, nav, sidebar, footer
│   ├── post.html          ← Single post layout
│   └── page.html          ← Static page layout (about, publications)
│
├── _data/
│   └── sidebar.yml        ← Expertise, current roles, award products, publications, labels
│
└── assets/
    └── css/style.css      ← All styling — steampunk sci-fi theme
```

---

## Key Files — Where to Find Things

| What | Where |
|------|--------|
| Site title, URL, author email/social links | [_config.yml](_config.yml) |
| Header badges & role tagline | [_layouts/default.html](_layouts/default.html) lines 32–39 |
| Sidebar sections (expertise, current roles, etc.) | [_data/sidebar.yml](_data/sidebar.yml) |
| Bio quote in header | [_layouts/default.html](_layouts/default.html) line 21 |
| All CSS / theme colours | [assets/css/style.css](assets/css/style.css) |
| About / biography page | [about.md](about.md) |
| Blog posts | [_posts/](_posts/) |
| Publications page | [publications.md](publications.md) |

---

## Writing a New Post

Create a file in `_posts/` named `YYYY-MM-DD-slug.md` with this front matter:

```yaml
---
layout: post
title: "Your Post Title"
date: 2026-06-22 00:00:00 +0000
categories: [ai]           # ai | innersource | open-source | hfoss | sustainability | general
excerpt: "One or two sentences shown on the feed page."
linkedin_url: https://uk.linkedin.com/in/chamindra   # optional
external_url: https://github.com/...                  # optional
external_label: github                                # optional (replaces 'article')
---

Post body in Markdown here.
```

Available categories (control badge colour on the feed):
- `ai` — blue
- `innersource` — purple
- `open-source` — teal
- `hfoss` — orange
- `sustainability` — green
- `general` — grey

---

## Manual Install (if not using launch.sh)

### Prerequisites

- **macOS** with [Homebrew](https://brew.sh)
- **Ruby 3.1+** — install via Homebrew: `brew install ruby`
- **Bundler** — `gem install bundler`

### Steps

```bash
# 1. Add Homebrew Ruby to your PATH (add this to ~/.zshrc for persistence)
export PATH="$(brew --prefix ruby)/bin:$PATH"

# 2. Install gems
cd chamindra-site
bundle install

# 3. Serve locally
bundle exec jekyll serve --port 4000 --livereload
```

Open **http://localhost:4000** in your browser.

---

## Ruby Compatibility Note

This site requires **Ruby ≥ 3.1** and uses **Jekyll 4.4** (not the `github-pages` gem, which bundles Jekyll 3.9). Jekyll 3.9 pins Liquid 4.0.3 which calls `String#tainted?` — a method removed in Ruby 3.2. The Gemfile explicitly pins `liquid 4.0.4` which resolves this for local development.

**Deploying to GitHub Pages:** Use a GitHub Actions workflow with `actions/jekyll-build-pages` or the standard `github-pages` Actions approach — this runs Jekyll server-side and is not affected by the local Ruby version.

---

## Theme

Dark steampunk / sci-fi aesthetic — inspired by Blade Runner, Neuromancer, 2001, and classical Oxford. Amber (#EF9F27) and teal (#5DCAA5) on near-black. Monospace (Courier) for labels and navigation; Georgia serif for titles and body.

Colour variables and all sizing live in [`assets/css/style.css`](assets/css/style.css) — the `:root` block at the top.

---

## Content Areas

| Topic | Posts |
|-------|-------|
| **AI Governance** | FINOS AIGF Maintainer role, use-case taxonomy (SR 11-7), AIGF MCP server |
| **InnerSource** | FINOS InnerSource SIG Lead, Citi DevOps InnerSource patterns |
| **Open Source AI** | Foundation models, OSI licensing, open weights |
| **HFOSS** | Sahana DMS, humanitarian open source, Sri Lanka tsunami response |
| **Sustainability** | ESG alignment, SDGs, Eco-Friendly Web Alliance |
| **General** | Oxford, Magdalen Means Business exhibit |

# 📝 rankmath-seo-blog-generator

**Version:** 2.0
**Author:** [PixelKraft LLC](https://pixelkraft.net)
**Category:** SEO / Content
**Tested on:** Claude Sonnet 4, Claude Opus 4

---

## What It Does

Generates fully structured, publish-ready HTML blog posts optimized to score
**90–100 in RankMath Pro**. The skill covers all four RankMath test sections
and applies the exact placement rules each test requires — so the output is
ready to paste into WordPress with no manual SEO fixes needed.

---

## Key Features

- 🎯 **RankMath Pro 90–100 target** — satisfies all Basic SEO, Additional SEO, Title Readability, and Content Readability tests
- 🔑 **Exact keyword placement** — in title (first 50%), meta desc (first 120 chars), slug, first 10% of content, body (4–5×), H2/H3, and hero image alt
- 🖼️ **Live image URLs** — real Pexels images embedded directly, no placeholders
- 🔗 **Dofollow links** — internal links (no `target="_blank"`) + 1 external dofollow (no `rel=` attributes)
- 📋 **Table of Contents** — `<nav>` with anchor links, passes RankMath ToC test
- 📏 **2,500+ words** — hits RankMath's 100% content length score
- 📐 **Paragraphs ≤120 words** — passes RankMath's short paragraph test
- 📍 **Local SEO support** — city/region used naturally, service area in CTA
- ☎️ **CTA with real tel: link** — extracted from business data, specific to post topic

---

## What's New in v2.0

v1.0 produced posts scoring ~40–55 in RankMath Pro. v2.0 was retrained against
a live RankMath Pro inspection and fixes **9 scoring failures**:

| # | Fix |
|---|---|
| 1 | Keyword now at start of title (v1.0: buried in middle) |
| 2 | Keyword now in meta desc within first 120 chars (v1.0: missing) |
| 3 | Keyword now in first 10% of content (v1.0: rule was backwards — said "not in first sentence") |
| 4 | Keyword density formula added — 4–5 exact uses targeting 1–1.5% (v1.0: resulted in 0.2%) |
| 5 | External dofollow link explicitly required — no `rel=` attributes (v1.0: silent, links were nofollow) |
| 6 | Hero image alt must contain exact focus keyword (v1.0: "SEO optimized" was too vague) |
| 7 | Slug length capped at ≤75 chars (v1.0: no rule) |
| 8 | Title formula: power word + number + sentiment required (v1.0: missing) |
| 9 | Paragraph ≤120 word limit + ToC requirement added (v1.0: missing) |

---

## Requirements

- Claude Sonnet 4.5+ or Opus 4 recommended
- RankMath Pro plugin installed on WordPress
- Business website URL (or a brief describing services, location, phone number)
- Pexels images are sourced automatically — no account needed

---

## How to Use

### Step 1 — Upload the Skill

In a Claude conversation, click the **paperclip icon** and upload `SKILL.md`.
Claude will confirm it has read the skill.

### Step 2 — Provide Business Context

Paste your website URL or describe:
- Business name and services
- Target audience
- Service locations
- Phone number

### Step 3 — Request a Post

Tell Claude:
- The topic or focus keyword
- Whether it's location-based
- The goal: SEO traffic, lead generation, or authority

### Step 4 — Receive and Publish

Claude outputs a complete HTML file with:
- SEO metadata comment block (for RankMath fields)
- `<article>` wrapper
- All images embedded with live URLs
- Internal and external links
- CTA with real phone number

Paste the HTML body into WordPress → fill RankMath fields from the comment block → publish.

---

## RankMath Setup (per post)

After pasting HTML into WordPress, copy these fields from the comment block at
the top of the file into RankMath:

| RankMath Field | Source |
|---|---|
| Focus Keyword | `Focus Keyword:` in comment |
| SEO Title | `SEO Title:` in comment |
| Meta Description | `Meta Description:` in comment |
| Slug | `Slug:` in comment |
| Categories | `Categories:` in comment |

Add secondary keywords as additional focus keyword pills in RankMath Pro.

---

## Example Outputs

| File | Business | Location | Focus Keyword |
|---|---|---|---|
| [post-02-sacramento-energy-costs-hers.html](./examples/post-02-sacramento-energy-costs-hers.html) | Express Duct Test | Sacramento, CA | HERS rating Sacramento |
| [post-03-roseville-title24-contractors.html](./examples/post-03-roseville-title24-contractors.html) | Express Duct Test | Roseville, CA | HERS compliance Roseville |

---

## Pre-Publish Checklist

- [ ] Paste HTML into WordPress block editor (HTML/Code view)
- [ ] Copy SEO Title → RankMath Edit Snippet → Title
- [ ] Copy Meta Description → RankMath Edit Snippet → Description
- [ ] Set primary focus keyword in RankMath
- [ ] Add secondary keywords as additional pills
- [ ] Set slug in WordPress Permalink field
- [ ] Assign Categories
- [ ] Set Featured Image (use hero image from post)
- [ ] Preview → confirm images load and links work
- [ ] Check RankMath score → target 90–100
- [ ] Publish ✅

---

## Changelog

### v2.0 — 2025
- Full rewrite against live RankMath Pro inspection results
- Fixed 9 scoring failures from v1.0
- Added pre-publish self-check section
- Added word count tiers (1k / 1.5k / 2.5k → RankMath score mapping)
- Added paragraph length enforcement (≤120 words)
- Added ToC requirement
- Added dofollow link rules with `rel=` attribute warning

### v1.0 — 2024
- Initial release by Nurkamol Vakhidov
- Basic SEO structure, images, CTA

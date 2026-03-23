---
name: universal-seo-blog-generator
description: Generate premium, SEO-optimized HTML blog posts for any business or industry with internal linking, images, and conversion-focused structure.
version: 2.1
author: Nurkamol Vakhidov
updated-by: Claude (PixelKraft LLC) — retrained against live RankMath Pro inspection
changelog: >
  v2.1 — pk_publish_post now converts HTML to native Gutenberg blocks automatically
  (no Classic block); categories parameter accepts strings (names) or integers (IDs),
  new categories created automatically. Added Step 13: Publishing via MCP.

  v2.0 — Fixed 9 RankMath Pro scoring failures from v1.0:
  keyword placement rules, exact-phrase requirements, density targets,
  dofollow link requirement, image alt keyword rule, slug length,
  title position rule, paragraph limits, ToC, and metadata block.
---

# 🧠 Universal SEO Blog Generator — RankMath Pro Edition

## 🎯 Objective

Generate premium, SEO-optimized HTML blog posts for any company or industry,
achieving **90–100 RankMath Pro scores** while maintaining a natural,
authoritative, conversion-focused tone.

Output must be a fully structured HTML file, ready to publish in WordPress.

---

## ⚙️ Step 1: Learn the Business (MANDATORY)

Analyze the provided website URL or content and extract:

- Business name and primary services / products
- Target audience (homeowners, contractors, B2B, etc.)
- Brand tone (professional, friendly, authoritative)
- Service locations / cities
- Internal pages available for linking (services, contact, blog posts)
- Phone number for CTA

> If any of the above is missing → ask the user before proceeding.

---

## ❓ Step 2: Ask Before Generating

Before writing, confirm:

1. **Number of posts** to generate
2. **Topic** for each post — or ask to suggest based on business
3. **Location-based?** (yes / no — affects local SEO rules)
4. **Primary goal** per post:
   - SEO traffic
   - Lead generation
   - Brand authority

---

## 🔑 Step 3: Focus Keyword Rules (CRITICAL — RankMath Pro)

The focus keyword is the exact phrase RankMath will test against.
Every rule below must be satisfied for a 90+ score.

### 3.1 — Choose the Keyword Correctly
- Use an **exact phrase** that matches real search queries (e.g. `HERS rating Sacramento`)
- Do NOT paraphrase it in any of the required positions below
- Do NOT reuse the same focus keyword across multiple posts

### 3.2 — Keyword Placement Checklist (ALL required)

| Location | Rule |
|---|---|
| **SEO Title** | Exact phrase must appear in the **first 50%** of the title |
| **Meta Description** | Exact phrase must appear in the **first 120 characters** |
| **URL / Slug** | Exact phrase (hyphenated) in slug. Total slug ≤ 75 chars |
| **First 10% of content** | Exact phrase in the **opening paragraph** (not first sentence — within first ~100 words) |
| **Body content** | Exact phrase used **4–5 times** naturally throughout (1–1.5% density) |
| **At least one H2 or H3** | Exact phrase or close variation in a subheading |
| **At least one image alt** | Exact phrase in the alt attribute of the first or most prominent image |

### 3.3 — Keyword Density Formula

```
Target uses = (word count × 0.01) to (word count × 0.015)

Examples:
  1,000 words → 10–15 uses  ← aim for lower end to stay natural
  1,200 words → 12–18 uses  ← 4–5 exact phrase + semantic variations
```

> ⚠️ RankMath counts exact phrase AND semantic combinations.
> Use the exact phrase 4–5 times. Fill the remaining density with
> semantic keywords (e.g. for `HERS rating Sacramento`: "home energy
> rating", "Sacramento energy test", "certified HERS rater", "Title 24").

---

## 📝 Step 4: SEO Title Rules

RankMath tests **four things** on the title — all must pass:

1. **Exact focus keyword in first 50% of title** — place keyword at the START
2. **Power word** — include one emotionally engaging word (e.g. Proven, Fast, Essential, Complete, Trusted, Powerful, Smart, Hidden, Real)
3. **Positive or negative sentiment** — the title must evoke emotion
4. **Number** — include a specific number (e.g. 7 Ways, 5 Signs, 3 Steps)
5. **Length: ≤ 60 characters total**

### Title Formula:
```
[Focus Keyword]: [Number] [Power Word] [Benefit/Outcome]
```

### Examples:
```
✅ HERS Rating Sacramento: 7 Proven Ways to Cut Energy Costs       (57 chars)
✅ Duct Testing Roseville: 5 Essential Facts Every Homeowner Needs  (59 chars)
✅ Leaky Ducts Rio Linda: How to Stop Hidden Energy Waste Fast      (58 chars)

❌ 7 Ways a HERS Rating Cuts Sacramento Energy Costs               (keyword not at start)
❌ Title 24 Compliance in Sacramento: A Homeowner's Guide to HERS  (too long, keyword buried)
```

---

## 📄 Step 5: Meta Description Rules

1. **Exact focus keyword in first 120 characters** — place it naturally near the beginning
2. **Total length: 120–160 characters**
3. Conversion-focused — answer "what's in it for me?"
4. Include a subtle CTA or benefit hook

### Formula:
```
[Focus keyword] [benefit statement] — [differentiator or urgency hook].
```

### Example:
```
✅ HERS rating Sacramento homeowners trust reveals hidden energy waste,
   lowers cooling costs, and gives you a clear upgrade plan — same-day results.
   (143 chars — keyword in chars 1–23 ✅)

❌ Sacramento energy bills keep climbing. Discover how a HERS rating identifies
   hidden waste...
   (keyword not in first 120 chars ❌)
```

---

## 🔗 Step 6: Linking Rules

### Internal Links
- Minimum **2–3 internal links** per post
- Link to: Services page, Contact page, relevant blog posts
- Use **natural anchor text** — never "click here" or bare URLs
- No `target="_blank"` on any link

### External Links (MANDATORY — RankMath Additional SEO test)
- Minimum **1 external dofollow link** to an authoritative source
  (e.g. California Energy Commission, Energy Star, RESNET, government sites)
- Do NOT add `rel="nofollow"` or `rel="noopener noreferrer"` — this will fail
  the RankMath "Linking to External Content with a Followed Link" test
- Place the external link naturally within the body, not in the CTA

> ⚠️ v1.0 BUG: Adding `target="_blank"` automatically adds `rel="noopener noreferrer"`
> in many WordPress themes — which makes the link nofollow. Use plain `<a href="...">` only.

---

## 🖼️ Step 7: Image Rules

- Use **4 images minimum** (RankMath scores: 1 image = partial, 4+ images = 100%)
- Source from: **Pexels**, Unsplash, or Pixabay (free commercial use)
- Use **live image URLs** — no placeholders
- Add `loading="lazy"` to all images **except** the hero (first) image

### Alt Text Rules (MANDATORY):
- **IMG 1 (hero)**: Must contain the **exact focus keyword**
- **IMG 2–4**: Use descriptive, semantic alt text related to topic
- Keep alt text under 125 characters

### HTML Format:
```html
<!-- Hero — loading="eager", exact keyword in alt -->
<img src="LIVE_URL" alt="[exact focus keyword] — descriptive context" loading="eager">

<!-- All other images — loading="lazy" -->
<img src="LIVE_URL" alt="Descriptive semantic alt text" loading="lazy">
```

---

## 🧾 Step 8: Output Format (HTML)

### Metadata Comment Block (top of file):
```html
<!--
  Focus Keyword:       [exact phrase]
  Secondary Keywords:  [kw1], [kw2], [kw3], [kw4]
  SEO Title:           [title — focus keyword in first 50%]
  Meta Description:    [exact phrase in first 120 chars, 120–160 chars total]
  Slug:                [focus-keyword-hyphenated — ≤75 chars total URL]
  Categories:          [Primary Category], [Location Category], General
  (category names are passed as strings to pk_publish_post — created automatically if new)
-->
```

### Full HTML Structure:
```html
<!--
  [metadata block]
-->

<article>

  <h1>[Title — contains focus keyword]</h1>

  <p>[Opening paragraph — exact focus keyword within first 100 words,
     NOT as the very first word of the sentence]</p>

  <img src="LIVE_URL"
       alt="[exact focus keyword] — descriptive context"
       loading="eager">

  <nav aria-label="Table of Contents">
    <strong>In This Article</strong>
    <ul>
      <li><a href="#section-1">Section 1 Title</a></li>
      <li><a href="#section-2">Section 2 Title</a></li>
      <!-- 5–8 sections -->
    </ul>
  </nav>

  <h2 id="section-1">[Section — include focus keyword or variation here]</h2>
  <p>[Content — short paragraphs, max 120 words each]</p>

  <img src="LIVE_URL" alt="[semantic alt text]" loading="lazy">

  <h2 id="section-2">Section 2</h2>
  <p>[Content]</p>

  <!-- More sections... -->

  <img src="LIVE_URL" alt="[semantic alt text]" loading="lazy">

  <h2 id="cta">Schedule / Contact</h2>
  <p>[Final paragraph — use focus keyword one last time]</p>

  <img src="LIVE_URL" alt="[semantic alt text]" loading="lazy">

  <p>
    <strong>Call or text us today at
    <a href="tel:+1XXXXXXXXXX">(XXX) XXX-XXXX</a>
    to [action relevant to post topic].</strong>
  </p>

</article>
```

---

## ✍️ Step 9: Content Rules

### Length
- **Minimum: 1,000 words** (RankMath 40% score at 1,000–1,500 words)
- **Target: 1,500–2,000 words** (RankMath 60% score)
- **Best: 2,500+ words** (RankMath 100% score on content length test)
- Balance: longer = better score, but content must remain valuable — no padding

### Keyword Density (EXACT rules)
- Exact focus phrase: **4–5 times**
- Semantic / secondary keywords: fill body naturally
- Combined density target: **1.0–1.5%**
- **Never exceed 2.5%** — RankMath will flag keyword stuffing

### Paragraph Rules (RankMath Content Readability test)
- **Maximum 120 words per paragraph** — RankMath flags longer paragraphs
- Aim for 3–5 sentences per paragraph
- Use bullet lists to break up dense information

### Structure Requirements
- **H1**: Contains focus keyword (usually same as SEO title)
- **H2 sections**: 5–8 sections minimum
- **H3 subsections**: Use for numbered lists or sub-topics within H2s
- **Table of Contents**: Required — use `<nav>` with anchor links
- **Focus keyword in at least one H2 or H3**

### Tone & Language
- Authoritative but accessible
- Industry-specific terminology (shows expertise to Google)
- Conversion-focused — address the reader's pain points directly
- No filler phrases ("In today's world...", "In conclusion...")
- No passive voice heavy sections

---

## 📍 Step 10: Local SEO Rules (when location-based)

- Use city/region name naturally throughout — **3–5 times** in the body
- Include city in: H1 or first H2, at least one image alt, meta description
- Mention surrounding service areas in the CTA section
- Do NOT repeat the city name in every sentence — Google penalizes spammy local SEO

---

## ☎️ Step 11: CTA Rules

- **Every post must end with a CTA section**
- Use the real, extracted phone number
- Format: `<a href="tel:+1XXXXXXXXXX">(XXX) XXX-XXXX</a>`
- CTA should be specific to the post topic (not generic "call us today")
- Include the business's service area in the CTA paragraph

### Example:
```html
<p>
  <strong>Call or text us today at
  <a href="tel:+19162891211">(916) 289-1211</a>
  to schedule your same-day HERS duct test in Roseville.</strong>
</p>
```

---

## ✅ Step 12: Pre-Publish Self-Check

Before outputting the final HTML, verify every item:

### Basic SEO
- [ ] Exact focus keyword in SEO title, in first 50% of title
- [ ] Exact focus keyword in meta description, within first 120 chars
- [ ] Exact focus keyword in slug
- [ ] Exact focus keyword within first 10% of content body
- [ ] Exact focus keyword in body 4–5 times (1–1.5% density)
- [ ] Exact focus keyword NOT used in another post (uniqueness)

### Additional SEO
- [ ] Exact focus keyword in at least one H2 or H3
- [ ] Exact focus keyword in at least one image alt attribute
- [ ] Keyword density 1.0–1.5% (not below, not above 2.5%)
- [ ] Slug is ≤ 75 characters total
- [ ] At least 1 external dofollow link (NO rel="nofollow", NO rel="noopener noreferrer")
- [ ] At least 2–3 internal links with natural anchors
- [ ] No `target="_blank"` on any link

### Title Readability
- [ ] Focus keyword in first 50% of SEO title
- [ ] At least 1 power word in title
- [ ] Title has positive OR negative sentiment
- [ ] Title contains a number
- [ ] Title ≤ 60 characters

### Content Readability
- [ ] Table of Contents present (`<nav>` with anchor links)
- [ ] No paragraph exceeds 120 words
- [ ] At least 4 images with live URLs
- [ ] `loading="eager"` on hero image, `loading="lazy"` on all others
- [ ] `<article>` wrapper present

### CTA
- [ ] Real phone number in `<a href="tel:...">` at end of post
- [ ] CTA is specific to post topic and location

---

## 🏆 RankMath Score Targets

| Section | Target | Key Requirements |
|---|---|---|
| Basic SEO | ✅ All green | Keyword in title (first 50%), meta desc (first 120 chars), URL, first 10% of content, body 4–5× |
| Additional SEO | ✅ All green | Keyword in H2/H3, image alt, density 1–1.5%, external dofollow link, internal links |
| Title Readability | ✅ All green | Keyword at start, power word, sentiment, number, ≤60 chars |
| Content Readability | ✅ All green | ToC, short paragraphs, 4+ images |
| **Overall Score** | **90–100 / 100** | All sections passing |

---

## 🚀 Step 13: Publishing via PixelKraft SEO Pro MCP

When publishing with `pk_publish_post`, note:

### Native Gutenberg Blocks (automatic)
The plugin **automatically converts the HTML output to native Gutenberg blocks** before saving.
You do NOT need to change the HTML structure — keep the `<article>` wrapper and `<h1>` in place.
The server strips them and maps each element:

| HTML tag | Gutenberg block |
|---|---|
| `<h2>`, `<h3>`–`<h6>` | `wp:heading` |
| `<p>` | `wp:paragraph` |
| `<ul>` | `wp:list` |
| `<ol>` | `wp:list` (ordered) |
| `<figure><img>` | `wp:image` |
| `<blockquote>` | `wp:quote` |
| `<pre>` | `wp:code` |
| `<hr>` | `wp:separator` |
| `<nav>`, `<div>`, etc. | `wp:html` |

### Categories by Name
Pass category names as strings — no need to look up IDs first:
```
categories: ["HERS Compliance", "Roseville", "Title 24"]
```
New categories are created automatically if they don't exist.

### Full pk_publish_post Call
```
pk_publish_post(
  title:      "[SEO Title from metadata block]",
  content:    "[full HTML article output]",
  keyword:    "[focus keyword]",
  meta_title: "[SEO Title ≤60 chars]",
  meta_desc:  "[meta description 120–160 chars]",
  slug:       "[slug from metadata block]",
  categories: ["[Primary Category]", "[Location Category]"],
  status:     "publish"   ← or "draft" for review
)
```

---

## 📋 Quick Reference Card

```
TITLE:        [Keyword]: [Number] [Power Word] [Benefit] — ≤60 chars, keyword first
META:         [Exact keyword] in char 1–120, total 120–160 chars
SLUG:         exact-keyword-hyphenated (≤75 chars total URL)
INTRO:        Exact keyword within first 100 words, not first word of sentence
BODY:         4–5 exact uses + semantic variations = 1–1.5% density
H2/H3:        At least 1 subheading contains exact keyword or close variation
IMG ALT:      IMG 1 must contain exact keyword
LINKS:        2–3 internal (natural anchors) + 1 external dofollow (no rel attributes)
PARAGRAPHS:   ≤120 words each
TOC:          Required — <nav> with anchor links
IMAGES:       4 minimum, live URLs, loading="eager" on hero only
CTA:          Real tel: link, specific to post topic + location
```

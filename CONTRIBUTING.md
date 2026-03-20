# Contributing to Claude Skill Library

Thank you for considering a contribution. This library grows through
community submissions — every high-quality skill added here saves someone
else hours of prompt engineering.

---

## 📋 Before You Start

Check the [open issues](../../issues) and [existing skills](../) to make sure
your idea isn't already covered or in progress.

If you're unsure whether your skill fits, open a **Discussion** first and describe
what it does — we'll give you quick feedback before you invest time building it.

---

## 🏗️ How to Submit a Skill

### 1. Fork the Repository

Click **Fork** at the top-right of this page. Work in your fork.

### 2. Create a Skill Folder

Copy the `_template/` folder and rename it to your skill name:

```bash
cp -r _template/ your-skill-name/
```

### 3. Fill in `SKILL.md`

This is the file users upload to Claude. It must:

- Have a clear, single purpose
- Include step-by-step instructions Claude can follow
- Have a frontmatter block at the top (see template)
- Be tested — run it yourself at least 3 times with different inputs

### 4. Fill in `README.md`

Explain what the skill does, who it's for, and how to use it.
Include at least one real example or screenshot.

### 5. Add Example Outputs

Put at least one real Claude output in the `examples/` folder.
This is the most important signal that your skill actually works.

### 6. Open a Pull Request

- Base branch: `main`
- PR title format: `Add: your-skill-name v1.0`
- PR description: paste your skill's README summary

---

## 📐 Skill Naming Convention

Use lowercase kebab-case with this pattern:

```
[platform-or-tool]-[function]-[type]
```

| ✅ Good | ❌ Avoid |
|---|---|
| `rankmath-seo-blog-generator` | `blog_generator` |
| `wordpress-plugin-documenter` | `WP Plugin Docs` |
| `shopify-product-description-writer` | `ecommerce helper` |
| `google-ads-copy-generator` | `ads` |

The name should tell someone exactly what it does without reading the README.

---

## ✅ Quality Bar

Before opening a PR, check every box:

### SKILL.md
- [ ] Frontmatter block present (`name`, `description`, `version`, `author`)
- [ ] Single clear purpose — does one thing well
- [ ] Step-by-step structure Claude can follow sequentially
- [ ] Includes output format specification
- [ ] Includes a self-check or validation section
- [ ] Tested minimum 3 times with different inputs

### README.md
- [ ] What it does (2–3 sentences)
- [ ] Who it's for
- [ ] Requirements (model, tools, data needed)
- [ ] Step-by-step usage instructions
- [ ] At least one example output or screenshot
- [ ] Changelog with version history

### Examples
- [ ] At least 1 real output file in `examples/`
- [ ] Output filename describes the content (not `example1.html`)
- [ ] No sensitive or personal data in examples

---

## 🔢 Versioning

Use semantic versioning: `MAJOR.MINOR`

| Change type | Version bump |
|---|---|
| New skill | `1.0` |
| Bug fix / small improvement | `1.1`, `1.2`... |
| Breaking rewrite or major new feature | `2.0` |

Update the version in both the frontmatter and the README changelog.

---

## 🗣️ Code of Conduct

- Be respectful in reviews and discussions
- Skills that generate harmful, deceptive, or illegal content will not be accepted
- Credit sources if your skill builds on someone else's work

---

## 📄 License

By submitting a skill, you agree that it will be published under the
[MIT License](../LICENSE) of this repository.

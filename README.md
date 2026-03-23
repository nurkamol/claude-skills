# 🧠 Claude Skill Library

> A growing collection of reusable Claude skills for SEO, content generation,
> business automation, and more — built and maintained by [PixelKraft LLC](https://pixelkraft.net).

---

## What Is a Claude Skill?

A **Skill** is a structured `SKILL.md` file you upload to Claude to give it
persistent, specialized instructions for a specific task. Instead of writing
long prompts every time, you upload the skill once per conversation and Claude
follows its rules automatically — consistently, every time.

Think of it as a reusable system prompt you can share, version, and improve.

---

## 📦 Available Skills

| Skill | Category | Description | Version |
|---|---|---|---|
| [rankmath-seo-blog-generator](./rankmath-seo-blog-generator/) | SEO / Content | Generates RankMath Pro-optimized HTML blog posts targeting 90–100 scores | 2.1 |

> More skills are added regularly. ⭐ Star this repo to get notified.

---

## 🚀 How to Use a Skill

1. Browse to the skill folder you want
2. Open `SKILL.md` → click **Raw** → save the file to your computer
3. In a Claude conversation, click the **paperclip icon** → upload `SKILL.md`
4. Claude reads the skill and applies it automatically
5. Start your request — Claude will follow the skill's rules

> **Tip:** Upload the skill at the start of a new conversation for best results.
> Skills stay active for the entire conversation once uploaded.

---

## 🗂️ Skill Categories

| Category | Description |
|---|---|
| **SEO / Content** | Blog posts, product descriptions, meta tags, LLMS.txt |
| **WordPress** | Plugin docs, theme development, Bricks Builder |
| **Business Automation** | Invoices, emails, reports, workflows |
| **Marketing** | Ad copy, landing pages, email sequences |
| **Development** | Code generation, documentation, refactoring |

---

## 🤝 Contributing

Have a skill worth sharing? Contributions are welcome.

See [CONTRIBUTING.md](./CONTRIBUTING.md) for submission guidelines,
naming conventions, and the quality bar for inclusion.

---

## 📁 Repository Structure

```
claude-skills/
│
├── README.md                        ← You are here (catalog index)
├── LICENSE                          ← MIT
├── CONTRIBUTING.md                  ← How to submit a skill
│
├── rankmath-seo-blog-generator/     ← Skill folder
│   ├── SKILL.md                     ← The skill (upload this to Claude)
│   ├── README.md                    ← What it does + how to use it
│   └── examples/                   ← Real output examples
│
└── _template/                      ← Scaffold for new skills
    ├── SKILL.md
    └── README.md
```

---

## 📄 License

[MIT](./LICENSE) — free to use, modify, and distribute.

---

## 🔗 Links

- Website: [pixelkraft.net](https://pixelkraft.net)
- Built with: [Claude](https://claude.ai) by Anthropic

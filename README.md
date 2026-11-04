# Skilla · 3D AI Agent Skills Archive

> **An interactive 3D hero and registry of 2,900+ installable AI Agent Skills, system prompts, and autonomous coding playbooks.**

![Skilla Hero](https://img.shields.io/badge/Three.js-r160-black?style=for-the-badge&logo=three.js)
![Live Skills](https://img.shields.io/badge/Verified%20Skills-2%2C933-gold?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)
![Ecosystem](https://img.shields.io/badge/Ecosystem-Claude%20Code%20%7C%20Antigravity%20%7C%20Codex-purple?style=for-the-badge)

---

## 🌟 Overview

**Skilla** is an open registry and interactive archive for `SKILL.md` playbooks that power autonomous agents, interface engineering, and anti-generic code synthesis across Antigravity, Claude Code, Cursor, and Codex.

### Key Features
- **3D Hardcover Playbook Wave:** Built with Three.js (r160), featuring 32 real 3D books standing on edge with procedural high-resolution Swiss-modernist cover textures and foil spines.
- **Sub-stepped Physics Springs:** Dual-axis springs ($K = 70, C = 12.5$) sub-stepped 4 times per frame for jitter-free 60–120fps motion.
- **Interactive Inspection HUD:** Only appears on direct book hover or mouse-wheel scrolling, revealing volume details, category badges, author handles, and one-click GitHub links.
- **Live Registry (2,900+ Skills):** Fully organized catalog indexed from `sickn33/antigravity-awesome-skills`, Anthropic, Vercel Labs, and the global developer community.
- **Dedicated Sub-Pages:**
  - `skills.html`: Searchable directory with domain filter tags.
  - `foundations.html`: Specification and anatomy of a `SKILL.md` file.
  - `workflows.html`: Multi-agent orchestration recipes and execution pipelines.
  - `more.html`: Model Context Protocol (MCP) server connectors and documentation.
  - `submit.html`: Creator studio with real-time live `SKILL.md` preview generator.
  - `explore.html`: Real-time fast search through 2,900+ verified skills with 25-item pagination.

---

## 🚀 Quick Start

Run a local server with Python or Node.js:

```bash
# Using Python
python3 -m http.server 8000

# Or using npx serve
npx serve .
```

Open your browser to:
👉 `http://localhost:8000/index.html`

---

## 🔄 Keeping the Catalog Updated

To pull the latest verified skills directly from GitHub:

```bash
./update_skills.sh
```

Or click **"Sync Latest"** in the UI on the Explore page.

---

## 🛠️ Tech Stack
- **WebGL / 3D:** Three.js (r160 ESM module via jsDelivr)
- **Shading & Environment:** `RoomEnvironment`, `PMREMGenerator`, `ACESFilmicToneMapping`
- **Typography:** Libre Caslon Display, Inter, JetBrains Mono
- **Textures:** Procedural canvas generators (zero external image CORS dependencies)
- **Data:** Fast client-side JSON indexing

---

## 📄 License
MIT © [Maahir](https://github.com/Maahirrrr)

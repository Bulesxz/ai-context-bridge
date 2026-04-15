<div align="center">

# 🔀 ai-context-bridge

**在多个 AI 编程 IDE 之间无缝共享上下文，告别重复粘贴，告别信息丢失**

**Seamlessly share AI context across multiple IDEs — no more copy-pasting, no more lost progress**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/Bulesxz/ai-context-bridge?style=social)](https://github.com/Bulesxz/ai-context-bridge)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[English](#english) · [中文](#中文)

</div>

---

## 中文

### 😤 你是否遇到过这些情况？

- Cursor 用着用着触发风控，只能换 Windsurf 继续
- 切换 IDE 后，之前聊了半小时的上下文全没了
- 每次都要重新解释一遍"我在做什么、做到哪了"
- 多个 AI IDE 账号轮流用，但上下文完全割裂

**这不是你的问题，这是当前 AI IDE 生态的通病。**

### ✅ ai-context-bridge 怎么解决

核心思路很简单：**把上下文从 IDE 里搬出来，放进项目里。**

每次 git commit，自动把当前进度、最近改动、TODO 注释同步进 AI_CONTEXT.md。
换到任何 IDE，一句话即可接续：**"读 AI_CONTEXT.md，继续上次的工作"**。

### 🚀 快速开始（3 步）

**1. 安装 git hook（只需运行一次）**

curl -sSL https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/install.sh | bash

**2. 正常工作，正常 commit**

git commit -m "feat: 完成登录接口"
# ✅ AI_CONTEXT.md 自动更新！

**3. 切换 IDE 时，粘贴一句话**

读取项目根目录的 AI_CONTEXT.md，了解当前进度，然后继续开发。

### 🗺️ Roadmap

- [x] **v0.1** Git hook 自动更新上下文
- [x] **v0.1** 支持 Cursor / Windsurf / Cline / Claude Code / Copilot
- [ ] **v0.2** VS Code 插件：保存时自动同步
- [ ] **v0.3** 上下文智能压缩
- [ ] **v1.0** 🎯 **彻底解决 AI IDE 账号轮换问题**（敬请期待）

### 🤝 支持的 IDE

| IDE | 读取方式 | 自动程度 |
|-----|---------|----------|
| **Claude Code** | 自动读取 CLAUDE.md | ⭐⭐⭐ 全自动 |
| **Cursor** | @AI_CONTEXT.md | ⭐⭐ 一句话 |
| **Windsurf** | @file 引用 | ⭐⭐ 一句话 |
| **Cline / Continue** | #file: 引用 | ⭐⭐ 一句话 |
| **GitHub Copilot** | 打开文件后 #editor | ⭐⭐ 一句话 |
| **Aider** | --read AI_CONTEXT.md | ⭐⭐ 启动参数 |

### ⭐ 如果这个项目帮到了你

请给个 Star，让更多被风控折磨的开发者看到它 🙏

---

## English

### 😤 Sound familiar?

- Cursor hits rate limits mid-task, you switch to Windsurf — but all context is gone
- Every IDE switch means re-explaining your entire codebase from scratch
- Juggling multiple AI IDE accounts but the context is completely siloed

**This isn't your fault. It's a fundamental flaw in the current AI IDE ecosystem.**

### ✅ How ai-context-bridge fixes this

Every git commit automatically syncs your progress into AI_CONTEXT.md. Switch to any IDE and say: **"Read AI_CONTEXT.md and continue where we left off."**

### 🚀 Quick Start

curl -sSL https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/install.sh | bash

### 🗺️ Roadmap

- [x] **v0.1** Auto-update context via git hook
- [x] **v0.1** Works with Cursor, Windsurf, Cline, Claude Code, Copilot, Aider
- [ ] **v0.2** VS Code extension: sync on save
- [ ] **v1.0** 🎯 **Permanently solve the AI IDE account rotation problem**

---

<div align="center">

Made with 😤 frustration and ❤️ by developers who got rate-limited one too many times.

**[⭐ Star this repo](https://github.com/Bulesxz/ai-context-bridge)** if it saved your sanity.

</div>

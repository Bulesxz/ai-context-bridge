<div align="center">

# 🔀 ai-context-bridge

**VPN 断了、风控来了、账号限额了——换个 IDE 继续，上下文一键接续**

**VPN unstable, rate-limited, account flagged — switch IDEs instantly without losing AI context**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/Bulesxz/ai-context-bridge?style=social)](https://github.com/Bulesxz/ai-context-bridge)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[English](#english) · [中文](#中文)

</div>

---

## 中文

### 😤 2024~2025 年，每个用 AI 编程的人都在经历这些

现在用 AI 编程，已经不是"选一个 IDE 用到底"的时代了。

**现实是这样的：**

1. **VPN 不稳**：连接抖动，Cursor / Claude 突然断线，对话中断
2. **风控触发**：IP 异常、使用频率过高、账号被临时封禁或限速
3. **账号耗尽**：免费额度用完，付费套餐到上限，只能换备用账号
4. **被迫切换**：Cursor 不行了换 Windsurf，Windsurf 额度没了换 Codex，Codex 出问题换 Claude Code……

于是你打开了第 3 个 IDE，然后发现——

> **之前聊了一个小时的上下文，全没了。**

你得重新解释：我在做什么项目、技术栈是什么、现在做到哪一步、有哪些约定、下一步要干嘛……

**这不是你的问题。这是当前 AI IDE 生态没有解决的结构性痛点。**

---

### 📊 你可能同时在用这些工具

| 工具 | 常见被迫切换原因 |
|------|----------------|
| **Cursor** | IP 风控、Pro 额度耗尽、网络不稳定 |
| **Windsurf** | 免费额度限制、账号封禁 |
| **GitHub Copilot** | 企业账号权限问题 |
| **Claude Code** | 网络问题、API 限流 |
| **Codex (OpenAI)** | 配额限制、访问异常 |
| **Antigravity** | 新工具备选 |
| **Cline / Continue** | 本地备用方案 |
| **Aider** | 离线 / 无网备用 |

每次切换 = 重新解释项目背景 = **浪费 10~30 分钟**

---

### ✅ ai-context-bridge 的解法

核心思路只有一句话：**把上下文从 IDE 里搬出来，放进项目里。**

上下文不属于某个 IDE 的聊天窗口，它属于你的项目。

```
┌─────────────────────────────────────────────────────┐
│                    你的项目根目录                     │
│                                                     │
│   AI_CONTEXT.md  ← git hook 每次 commit 自动更新    │
│                                                     │
│   包含：当前分支 · 最近提交 · 未提交改动 · TODO列表   │
└─────────────────────────────────────────────────────┘
          ↓ 切换任何 IDE，粘贴一句话 ↓
    "读 AI_CONTEXT.md，继续上次的工作"
```

**无论你切换到哪个 IDE，上下文始终在项目里等着你。**

---

### 🚀 快速开始（3 步，1 分钟）

**第 1 步：在你的项目里安装 git hook**

```bash
cd your-project
curl -sSL https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/install.sh | bash
```

**第 2 步：正常工作，正常 commit**

```bash
git add .
git commit -m "feat: 完成登录接口"
# ✅ AI_CONTEXT.md 自动更新！什么都不用做。
```

**第 3 步：被迫切换 IDE 时，粘贴这句话**

```
读取项目根目录的 AI_CONTEXT.md，了解当前进度和上下文，然后继续开发。
```

**就这样。不改变任何工作习惯，零学习成本。**

---

### 📄 AI_CONTEXT.md 自动生成的内容

```markdown
# AI Context Bridge — 工作上下文
> 最后更新：2025-04-15 14:32

## 当前分支 / Current Branch
`feat/user-auth`

## 最近提交 / Recent Commits
a3f2c1d feat: 完成用户登录接口
b8e9f2a fix: 修复 token 过期问题

## 未提交改动 / Uncommitted Changes
M  src/auth/refresh.ts

## 代码待办 / Code TODOs
src/auth/refresh.ts:23  TODO: 处理 token 被吊销的边界情况
```

AI 拿到这个文件，**立刻知道你做到哪了、下一步干嘛**，无需你重新解释。

---

### 🤝 支持的 IDE

| IDE | 接续方式 | 自动程度 |
|-----|---------|---------|
| **Claude Code** | 自动读取 `CLAUDE.md`（重命名即可） | ⭐⭐⭐ 全自动 |
| **Cursor** | `@AI_CONTEXT.md` | ⭐⭐ 一句话 |
| **Windsurf** | `@file` 引用 | ⭐⭐ 一句话 |
| **Codex (OpenAI)** | 粘贴文件内容 | ⭐⭐ 一句话 |
| **Antigravity** | 粘贴文件内容 | ⭐⭐ 一句话 |
| **Cline / Continue** | `#file:AI_CONTEXT.md` | ⭐⭐ 一句话 |
| **GitHub Copilot** | 打开文件后 `#editor` | ⭐⭐ 一句话 |
| **Aider** | `--read AI_CONTEXT.md` | ⭐⭐ 启动参数 |

---

### 🗺️ Roadmap

- [x] **v0.1** Git hook 自动更新上下文
- [x] **v0.1** 支持所有主流 AI IDE
- [ ] **v0.2** VS Code 插件：保存时自动同步（无需 commit）
- [ ] **v0.3** 上下文智能压缩（防止文件过长）
- [ ] **v0.4** 多人协作：团队共享 AI 上下文
- [ ] **v1.0** 🎯 **账号风控自动切换 + 上下文无缝继承**（终极目标）

---

### ⭐ 如果你也被风控折磨过

给个 Star，让更多在 IDE 之间反复横跳的开发者找到这个工具 🙏

---

## English

### 😤 The Real Problem Nobody Talks About

Using AI coding tools in 2025 isn't about picking one IDE and sticking with it. The reality is brutal:

- **VPN instability** drops your connection mid-session
- **Risk control triggers**: unusual IP, high usage frequency, account temporarily flagged
- **Rate limits hit**: free tier exhausted, paid quota maxed out
- **Forced switching**: Cursor → Windsurf → Codex → Claude Code → Antigravity...

And every time you switch, you face the same nightmare:

> **All your AI context is gone. Re-explain everything from scratch.**

**This is not a you problem. It's a structural flaw in the AI IDE ecosystem.**

---

### 📊 The Account Rotation Reality

| Tool | Common Reason to Switch Away |
|------|------------------------------|
| **Cursor** | IP-based risk control, Pro quota exhausted |
| **Windsurf** | Free tier limits, account restrictions |
| **GitHub Copilot** | Enterprise account issues |
| **Claude Code** | Network issues, API rate limits |
| **Codex (OpenAI)** | Quota limits, access anomalies |
| **Antigravity** | Alternative when others fail |
| **Cline / Continue** | Local fallback |
| **Aider** | Offline / no-network fallback |

Every switch = re-explaining project context = **10–30 minutes wasted**

---

### ✅ The Fix: Context Lives in Your Project, Not Your IDE

Install one git hook. Every `git commit` auto-updates `AI_CONTEXT.md` with current branch, recent commits, uncommitted changes, and TODO/FIXME comments.

When forced to switch IDEs:

```
Read AI_CONTEXT.md and continue where we left off.
```

**That's it. Your AI is back up to speed in seconds.**

---

### 🚀 Quick Start

```bash
cd your-project
curl -sSL https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/install.sh | bash
```

Zero learning curve. No change to your workflow.

---

### 🗺️ Roadmap

- [x] **v0.1** Auto-update context via git hook on every commit
- [x] **v0.1** Works with Cursor, Windsurf, Codex, Claude Code, Antigravity, Copilot, Aider
- [ ] **v0.2** VS Code extension: sync on save (no commit needed)
- [ ] **v0.3** Smart context compression
- [ ] **v0.4** Team context sharing
- [ ] **v1.0** 🎯 **Auto-detect rate limits + seamless context handoff** (the endgame)

---

### Contributing

PRs and issues welcome. If you've been rate-limited, you already understand why this exists.

---

<div align="center">

Built by developers who got VPN-dropped, rate-limited, and risk-controlled one too many times. 😤

**[⭐ Star this repo](https://github.com/Bulesxz/ai-context-bridge)** · **[中文](#中文)**

</div>

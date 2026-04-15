#!/bin/bash
# ai-context-bridge installer
# Usage: curl -sSL https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/install.sh | bash

set -e

echo ""
echo "🔀 ai-context-bridge installer"
echo "================================"

if [ ! -d ".git" ]; then
  echo "❌ Not a git repository. Please run: git init"
  exit 1
fi

HOOK_FILE=".git/hooks/post-commit"
SCRIPT_URL="https://raw.githubusercontent.com/Bulesxz/ai-context-bridge/main/post-commit"

echo "📥 Downloading git hook..."
curl -sSL "$SCRIPT_URL" -o "$HOOK_FILE"
chmod +x "$HOOK_FILE"

echo "✅ Installed successfully!"
echo ""
echo "How to use:"
echo "  1. Work normally and git commit as usual"
echo "  2. AI_CONTEXT.md will auto-update after each commit"
echo "  3. When switching IDEs, say:"
echo "     Read AI_CONTEXT.md and continue where we left off"
echo ""
echo "⭐ Star us: https://github.com/Bulesxz/ai-context-bridge"

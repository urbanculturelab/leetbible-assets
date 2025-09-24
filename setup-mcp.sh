#!/bin/bash

echo "🚀 LEET BIBLE MCP 서버 설치 스크립트"
echo "====================================="

# Node.js 확인
if ! command -v node &> /dev/null; then
    echo "❌ Node.js가 설치되어 있지 않습니다."
    echo "👉 https://nodejs.org 에서 설치해주세요."
    exit 1
fi

echo "✅ Node.js 설치 확인됨: $(node -v)"

# MCP 서버 설치
echo ""
echo "📦 MCP 서버 설치 중..."
echo "------------------------"

# 1. GitHub MCP Server
echo "1️⃣ GitHub Server 설치..."
npm install -g @modelcontextprotocol/server-github

# 2. Fetch MCP Server (웹 크롤링)
echo "2️⃣ Fetch Server 설치..."
npm install -g @modelcontextprotocol/server-fetch

# 3. Filesystem MCP Server
echo "3️⃣ Filesystem Server 설치..."
npm install -g @modelcontextprotocol/server-filesystem

# 4. Memory MCP Server (세션 저장)
echo "4️⃣ Memory Server 설치..."
npm install -g @modelcontextprotocol/server-memory

echo ""
echo "✅ MCP 서버 설치 완료!"
echo ""
echo "⚠️  중요: GitHub Personal Access Token 설정 필요"
echo "-------------------------------------------"
echo "1. https://github.com/settings/tokens 접속"
echo "2. 'Generate new token (classic)' 클릭"
echo "3. 권한 선택: repo (전체), write:packages"
echo "4. 생성된 토큰을 mcp_config.json의 GITHUB_PERSONAL_ACCESS_TOKEN에 입력"
echo ""
echo "📁 설정 파일 위치:"
echo "   .claude/mcp_config.json"
echo ""
echo "🎯 완료 후 Claude Desktop을 재시작하세요!"
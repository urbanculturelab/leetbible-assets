#!/bin/bash

echo "🚀 GitHub leetbible-assets 레포 자동 세팅"
echo "========================================="

# 임시 디렉토리로 이동
cd /tmp

# 기존 폴더 삭제 (있을 경우)
rm -rf leetbible-assets-setup

# 레포 클론
echo "📥 레포지토리 클론 중..."
git clone https://github.com/urbanculturelab/leetbible-assets.git leetbible-assets-setup

# 클론 실패 체크
if [ ! -d "leetbible-assets-setup" ]; then
    echo "❌ 레포 클론 실패. GitHub 레포가 public인지 확인해주세요."
    exit 1
fi

cd leetbible-assets-setup

echo "📁 폴더 구조 생성 중..."

# 폴더 구조 생성
mkdir -p products/principle-2027
mkdir -p products/principle-2-2027
mkdir -p products/reasoning-2027
mkdir -p products/writing-2027
mkdir -p templates
mkdir -p authors
mkdir -p icons

# README.md 생성
cat > README.md << 'EOF'
# 🎨 LEET BIBLE Assets CDN

리트바이블 이미지 자산 저장소 (jsDelivr CDN 연동)

## 📦 CDN URL 구조

```
https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/[폴더]/[파일명]
```

## 📁 폴더 구조

- `products/` - 교재별 이미지
  - `principle-2027/` - 프린시플(상) 2027
  - `principle-2-2027/` - 프린시플(하) 2027
  - `reasoning-2027/` - 추리논증 2027
  - `writing-2027/` - 논술 2027
- `templates/` - 공통 템플릿 이미지
- `authors/` - 저자 프로필 사진
- `icons/` - 아이콘 및 로고

## 🔗 사용 예시

### 이미지 직접 사용
```html
<img src="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/products/principle-2027/cover.jpg">
```

### 반응형 이미지
```html
<picture>
  <source media="(max-width: 768px)" 
          srcset="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/products/principle-2027/hero-mobile.jpg">
  <img src="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/products/principle-2027/hero.jpg">
</picture>
```

## 📝 이미지 규격

| 타입 | 크기 | 포맷 | 용도 |
|-----|------|------|------|
| 교재 표지 | 600×800 | JPG | 상품 이미지 |
| 표지 썸네일 | 300×400 | JPG | 리스트용 |
| 히어로 배너 | 1920×800 | JPG | 메인 배너 |
| 모바일 히어로 | 768×400 | JPG | 모바일 배너 |
| 저자 사진 | 400×400 | JPG | 프로필 |
| 아이콘 | 자유 | SVG | UI 요소 |

## 🚀 업데이트 방법

1. 이미지 파일을 해당 폴더에 추가
2. Git commit & push
3. 1-2분 후 CDN에서 사용 가능

## ⚡ 캐시 갱신

캐시를 무시하고 최신 파일을 가져오려면:
```
https://purge.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/[파일경로]
```
EOF

# 테스트 이미지 생성 (SVG)
echo "🎨 테스트 이미지 생성 중..."

cat > products/principle-2027/test-cover.svg << 'EOF'
<svg width="600" height="800" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="gradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#962DE3;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#4FE32D;stop-opacity:1" />
    </linearGradient>
  </defs>
  <rect width="600" height="800" fill="url(#gradient)"/>
  <rect x="50" y="50" width="500" height="700" fill="white" opacity="0.1"/>
  <text x="300" y="200" font-family="Arial, sans-serif" font-size="48" font-weight="bold" fill="white" text-anchor="middle">LEET BIBLE</text>
  <text x="300" y="280" font-family="Arial, sans-serif" font-size="32" fill="white" text-anchor="middle">프린시플(상)</text>
  <text x="300" y="330" font-family="Arial, sans-serif" font-size="28" fill="white" text-anchor="middle">2027</text>
  <rect x="150" y="400" width="300" height="3" fill="white" opacity="0.5"/>
  <text x="300" y="500" font-family="Arial, sans-serif" font-size="20" fill="white" text-anchor="middle" opacity="0.9">법학적성시험</text>
  <text x="300" y="540" font-family="Arial, sans-serif" font-size="20" fill="white" text-anchor="middle" opacity="0.9">언어이해 기본서</text>
</svg>
EOF

# 플레이스홀더 이미지들 생성
echo "📋 플레이스홀더 이미지 생성 중..."

# 기본 히어로 이미지
cat > templates/default-hero.svg << 'EOF'
<svg width="1920" height="800" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="hero-gradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#962DE3;stop-opacity:1" />
      <stop offset="50%" style="stop-color:#6B2DE3;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#4FE32D;stop-opacity:1" />
    </linearGradient>
  </defs>
  <rect width="1920" height="800" fill="url(#hero-gradient)"/>
  <text x="960" y="400" font-family="Arial, sans-serif" font-size="72" font-weight="bold" fill="white" text-anchor="middle">LEET BIBLE</text>
</svg>
EOF

# 기본 저자 이미지
cat > authors/default.svg << 'EOF'
<svg width="400" height="400" xmlns="http://www.w3.org/2000/svg">
  <rect width="400" height="400" fill="#f0f0f0"/>
  <circle cx="200" cy="160" r="60" fill="#962DE3"/>
  <ellipse cx="200" cy="320" rx="100" ry="60" fill="#962DE3"/>
  <text x="200" y="160" font-family="Arial, sans-serif" font-size="48" fill="white" text-anchor="middle" dy="15">저</text>
</svg>
EOF

# Git 설정
echo "📤 GitHub에 푸시 중..."
git add .
git commit -m "Initial setup: folder structure and test images"

# Push (실패할 수 있음 - 권한 필요)
git push origin main 2>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ GitHub 푸시 성공!"
else
    echo "⚠️  수동으로 푸시가 필요합니다:"
    echo "   cd /tmp/leetbible-assets-setup"
    echo "   git push origin main"
fi

echo ""
echo "✅ 세팅 완료!"
echo ""
echo "📋 생성된 파일:"
echo "   - README.md"
echo "   - products/principle-2027/test-cover.svg"
echo "   - templates/default-hero.svg"
echo "   - authors/default.svg"
echo ""
echo "🔗 CDN URL 테스트 (1-2분 후):"
echo "   https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/products/principle-2027/test-cover.svg"
echo ""
echo "💡 Tip: 수동으로 확인하려면:"
echo "   cd /tmp/leetbible-assets-setup"
echo "   open ."
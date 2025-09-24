# 🖼️ GitHub + jsDelivr 이미지 CDN 설정 가이드

## 1️⃣ GitHub 레포지토리 구조

```
leetbible-assets/
├── README.md
├── .github/
│   └── workflows/
│       └── image-optimize.yml    # 자동 압축
├── products/                     # 교재별 이미지
│   ├── principle-2027/
│   │   ├── cover.jpg             # 표지 (600x800)
│   │   ├── cover-thumb.jpg       # 썸네일 (300x400)
│   │   ├── hero.jpg              # 히어로 배너 (1920x800)
│   │   ├── hero-mobile.jpg       # 모바일 히어로 (768x400)
│   │   ├── preview-01.jpg        # 미리보기 페이지
│   │   ├── preview-02.jpg
│   │   └── meta.json             # 이미지 정보
│   ├── principle-2-2027/
│   └── reasoning-2027/
├── authors/                      # 저자 사진
│   ├── hong-gildong.jpg
│   └── kim-cheolsu.jpg
├── templates/                    # 템플릿용 공통 이미지
│   ├── hero-default.jpg
│   ├── pattern-dark.png
│   └── badge-best.svg
├── icons/                        # 아이콘 (SVG)
│   ├── check.svg
│   ├── star.svg
│   └── arrow-right.svg
└── testimonials/                # 수강생 후기 관련
    ├── student-001.jpg
    └── signature-001.png
```

## 2️⃣ CDN URL 패턴

### 기본 URL 구조
```
https://cdn.jsdelivr.net/gh/leetbible/assets@main/[경로]
```

### 버전 지정 (캐시 무효화)
```
# 특정 커밋 해시 사용
https://cdn.jsdelivr.net/gh/leetbible/assets@[commit-hash]/products/principle-2027/cover.jpg

# 태그 사용
https://cdn.jsdelivr.net/gh/leetbible/assets@v1.0.0/products/principle-2027/cover.jpg
```

### 자동 최적화
```
# 원본
https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.jpg

# 자동 WebP 변환 (브라우저가 지원하면)
https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.webp

# 최소화 버전
https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.min.jpg
```

## 3️⃣ HTML 사용 예시

### 기본 사용
```html
<img src="https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.jpg" 
     alt="리트바이블 프린시플(상) 2027">
```

### 반응형 이미지
```html
<picture>
  <source media="(max-width: 768px)" 
          srcset="https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/hero-mobile.jpg">
  <img src="https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/hero.jpg" 
       alt="리트바이블 프린시플">
</picture>
```

### 레이지 로딩 + 폴백
```html
<img src="https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.jpg"
     onerror="this.src='https://cdn.jsdelivr.net/gh/leetbible/assets@main/templates/default-cover.jpg'"
     loading="lazy"
     alt="교재 표지">
```

## 4️⃣ 자동화 스크립트

### 이미지 URL 생성 함수
```javascript
const ASSET_BASE = 'https://cdn.jsdelivr.net/gh/leetbible/assets@main';

function getImageUrl(type, productId, imageName) {
  const paths = {
    product: `products/${productId}/${imageName}`,
    author: `authors/${imageName}`,
    template: `templates/${imageName}`,
    icon: `icons/${imageName}`
  };
  
  return `${ASSET_BASE}/${paths[type]}`;
}

// 사용 예
const coverUrl = getImageUrl('product', 'principle-2027', 'cover.jpg');
const authorUrl = getImageUrl('author', null, 'hong-gildong.jpg');
```

### 이미지 세트 자동 생성
```javascript
function getProductImages(productId) {
  return {
    cover: `${ASSET_BASE}/products/${productId}/cover.jpg`,
    coverThumb: `${ASSET_BASE}/products/${productId}/cover-thumb.jpg`,
    hero: `${ASSET_BASE}/products/${productId}/hero.jpg`,
    heroMobile: `${ASSET_BASE}/products/${productId}/hero-mobile.jpg`,
    previews: [1,2,3].map(i => 
      `${ASSET_BASE}/products/${productId}/preview-0${i}.jpg`
    )
  };
}
```

## 5️⃣ GitHub Actions 자동 압축

`.github/workflows/image-optimize.yml`:
```yaml
name: Optimize Images

on:
  push:
    paths:
      - '**.jpg'
      - '**.jpeg'
      - '**.png'
      - '**.gif'

jobs:
  optimize:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Image Optimization
        uses: calibreapp/image-actions@main
        with:
          githubToken: ${{ secrets.GITHUB_TOKEN }}
          jpegQuality: '85'
          jpegProgressive: true
          pngQuality: '85'
          webpQuality: '80'
```

## 6️⃣ 실제 작업 프로세스

### 1. 이미지 준비
```bash
# 폴더 구조 생성
products/principle-2027/
  ├── cover.jpg (600x800)
  ├── hero.jpg (1920x800)
  └── preview-01.jpg
```

### 2. GitHub에 푸시
```bash
git add .
git commit -m "Add principle-2027 images"
git push
```

### 3. 즉시 사용 가능
```html
<!-- 1-2분 후 바로 사용 -->
<img src="https://cdn.jsdelivr.net/gh/leetbible/assets@main/products/principle-2027/cover.jpg">
```

## 7️⃣ 성능 팁

### 이미지 사이즈 가이드
- **히어로**: 1920x800 (데스크톱), 768x400 (모바일)
- **교재 표지**: 600x800 (상세), 300x400 (썸네일)
- **저자 사진**: 400x400 (정사각형)
- **아이콘**: SVG 권장

### 최적화 체크리스트
- [ ] JPG는 85% 품질로 압축
- [ ] PNG는 TinyPNG로 압축
- [ ] SVG는 SVGO로 최적화
- [ ] 큰 이미지는 progressive 로딩
- [ ] 레이지 로딩 적용

## 🚀 시작하기

1. GitHub 레포 생성: `leetbible-assets`
2. 위 폴더 구조대로 정리
3. 이미지 업로드
4. jsDelivr URL로 바로 사용!

**예상 비용: 0원**
**예상 속도: 국내 10ms, 해외 50ms**
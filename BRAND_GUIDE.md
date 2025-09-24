# 📚 The LEET BIBLE 브랜드 가이드

## 🎨 브랜드 아이덴티티

### 브랜드명
- **영문 정식**: The LEET BIBLE
- **영문 약식**: LEET BIBLE
- **한글**: 리트바이블
- **도메인**: leetbible.com

### 브랜드 슬로건
- **메인**: "법학적성시험의 정석"
- **서브**: "합격을 위한 최적의 선택"

## 🎨 비주얼 아이덴티티

### 컬러 시스템
```css
/* Primary Colors */
--tlb-primary: #962DE3;        /* 리트바이블 퍼플 */
--tlb-primary-dark: #7A24BC;   /* 다크 퍼플 */
--tlb-primary-light: #B356F0;  /* 라이트 퍼플 */

/* Secondary Colors */
--tlb-secondary: #4FE32D;      /* 포인트 그린 */
--tlb-secondary-dark: #3FC421;  /* 다크 그린 */
--tlb-secondary-light: #6FFF4D; /* 라이트 그린 */

/* Grayscale */
--tlb-black: #0A0A0A;
--tlb-dark: #151515;
--tlb-gray: #666666;
--tlb-light-gray: #AAAAAA;
--tlb-white: #FFFFFF;

/* Semantic Colors */
--tlb-success: #4FE32D;
--tlb-warning: #FFB800;
--tlb-danger: #FF4444;
--tlb-info: #007AFF;
```

### 타이포그래피
```css
/* Fonts */
--tlb-font-primary: 'SUITE', -apple-system, sans-serif;  /* 제목용 */
--tlb-font-body: 'SUIT', -apple-system, sans-serif;      /* 본문용 */

/* Font Sizes */
--tlb-h1: 48px;  /* 메인 타이틀 */
--tlb-h2: 36px;  /* 섹션 타이틀 */
--tlb-h3: 28px;  /* 서브 타이틀 */
--tlb-h4: 24px;  /* 소제목 */
--tlb-body: 16px; /* 본문 */
--tlb-small: 14px; /* 작은 텍스트 */
```

### 그라데이션
```css
/* Signature Gradient */
--tlb-gradient: linear-gradient(135deg, #962DE3 0%, #4FE32D 100%);
--tlb-gradient-dark: linear-gradient(135deg, #7A24BC 0%, #3FC421 100%);
```

## 📝 문체 가이드

### 톤 & 매너
- **전문적**: 법학 전문 교육 브랜드로서의 신뢰감
- **친근한**: 수험생의 입장을 이해하는 따뜻함
- **명확한**: 복잡한 내용을 쉽게 전달
- **자신감**: 합격에 대한 확신

### 문장 스타일
```
❌ 피해야 할 표현:
- "~일 수도 있습니다" (불확실)
- "아마도" (추측성)
- "대충" (불성실)

✅ 권장 표현:
- "~합니다" (확신)
- "검증된" (신뢰)
- "체계적인" (전문성)
```

## 🏷️ 제품명 규칙

### 교재명 체계
```
[브랜드] [시리즈명] [과목] [연도]

예시:
- 리트바이블 프린시플 언어이해(상) 2027
- 리트바이블 프린시플 언어이해(하) 2027
- 리트바이블 추리논증 2027
- 리트바이블 논술 2027
```

### 영문 표기
```
The LEET BIBLE Principle Volume 1 2027
The LEET BIBLE Principle Volume 2 2027
The LEET BIBLE Reasoning 2027
The LEET BIBLE Essay 2027
```

## 🔤 클래스명 규칙

### CSS 클래스
```css
.tlb-[component]-[element]--[modifier]

예시:
.tlb-header
.tlb-header-title
.tlb-header-title--large
.tlb-button
.tlb-button--primary
.tlb-section-hero
```

### ID 규칙
```html
id="tlb-[page]-[section]"

예시:
id="tlb-principle-hero"
id="tlb-principle-features"
id="tlb-principle-author"
```

## 📐 레이아웃 규칙

### 컨테이너
- **최대 너비**: 1200px
- **패딩**: 20px (모바일), 40px (태블릿), 60px (데스크톱)

### 섹션 간격
- **섹션 간**: 80px (모바일), 100px (데스크톱)
- **요소 간**: 20px (기본), 40px (큰 간격)

### 반응형 브레이크포인트
```css
/* Mobile First */
@media (min-width: 768px) { /* Tablet */ }
@media (min-width: 1024px) { /* Desktop */ }
@media (min-width: 1440px) { /* Large Desktop */ }
```

## 🚫 금지 사항

1. **브랜드명 오표기**
   - ❌ LEET Bible, Leet Bible, 리트 바이블
   - ✅ The LEET BIBLE, LEET BIBLE, 리트바이블

2. **색상 임의 변경**
   - ❌ 다른 보라색 사용
   - ✅ 정의된 #962DE3 사용

3. **폰트 대체**
   - ❌ 다른 폰트로 임의 변경
   - ✅ SUITE/SUIT 폰트 사용

4. **로고 변형**
   - ❌ 비율 변경, 색상 변경
   - ✅ 원본 비율 유지

## 📋 체크리스트

### 페이지 제작 시 확인사항
- [ ] 브랜드명 정확히 표기
- [ ] 지정 색상 사용
- [ ] 지정 폰트 적용
- [ ] 반응형 디자인 적용
- [ ] 클래스명 규칙 준수
- [ ] SEO 메타태그 포함
- [ ] 로딩 속도 최적화

## 🔗 관련 파일

- `styles/global.css` - 글로벌 스타일
- `scripts/image-urls.js` - 이미지 URL 헬퍼
- `data/product-template.json` - 제품 데이터 템플릿

---

*최종 업데이트: 2025.09.20*
*브랜드 가이드 버전: 1.0.0*
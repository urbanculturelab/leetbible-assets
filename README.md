# 📚 LEET BIBLE 아임웹 템플릿 시스템

> 아임웹 상세페이지를 위한 체계적인 HTML/CSS 템플릿 시스템

## 📁 프로젝트 구조

```
imweb-templates/
│
├── 📂 components/          # 재사용 가능한 컴포넌트
│   ├── headers/            # 헤더 섹션 템플릿
│   ├── sections/           # 본문 섹션 템플릿
│   ├── footers/            # 푸터 섹션 템플릿
│   ├── buttons/            # 버튼 컴포넌트
│   └── cards/              # 카드 컴포넌트
│
├── 📂 styles/              # CSS 스타일시트
│   ├── global.css          # 전역 스타일
│   ├── components.css      # 컴포넌트 스타일
│   └── themes/             # 테마별 스타일
│
├── 📂 pages/               # 완성된 페이지 템플릿
│   └── [완성된 랜딩페이지들]
│
├── 📂 assets/              # 에셋 파일
│   ├── images/             # 이미지 파일
│   └── icons/              # 아이콘 파일
│
├── 📂 docs/                # 문서화
│   └── guides/             # 사용 가이드
│
└── 📂 examples/            # 예제 파일
    └── [사용 예제들]
```

## 🎨 디자인 시스템

### 브랜드 컬러
- **Primary**: `#962DE3` (리트바이블 보라)
- **Secondary**: `#4FE32D` (포인트 그린)
- **Dark**: `#151515` (배경)
- **Light**: `#FFFFFF` (텍스트)

### 타이포그래피
- **제목**: SUITE (Display Font)
- **본문**: SUIT (Body Font)

## 🚀 빠른 시작

### 1. 컴포넌트 선택
```
components/ 폴더에서 필요한 컴포넌트를 선택
```

### 2. 스타일 적용
```
styles/ 폴더의 CSS를 아임웹 사용자 정의 CSS에 추가
```

### 3. 아임웹에 적용
```
선택한 HTML을 아임웹 상세페이지 에디터에 붙여넣기
```

## 📝 사용법

### 컴포넌트 사용
```html
<!-- 예시: 헤더 컴포넌트 -->
<div class="tlb-header-section">
  <!-- 컴포넌트 내용 -->
</div>
```

### 스타일 커스터마이징
```css
/* CSS 변수를 통한 쉬운 커스터마이징 */
:root {
  --tlb-primary: #962DE3;
  --tlb-secondary: #4FE32D;
}
```

## 📖 컴포넌트 카탈로그

### Headers (헤더)
- `hero-header.html` - 히어로 헤더
- `simple-header.html` - 심플 헤더
- `review-header.html` - 리뷰 헤더

### Sections (섹션)
- `score-improvement.html` - 성적 향상 섹션
- `testimonial.html` - 수강후기 섹션
- `curriculum.html` - 커리큘럼 섹션

### Buttons (버튼)
- `cta-button.html` - CTA 버튼
- `gradient-button.html` - 그라디언트 버튼

## 🔧 개발 가이드

### 네이밍 컨벤션
- **클래스명**: `tlb-[component]-[element]`
- **파일명**: `[component-name].html`
- **CSS 변수**: `--tlb-[property]`

### 모범 사례
1. 모든 스타일은 `tlb-` 프리픽스 사용
2. 인라인 스타일 최소화
3. 반응형 디자인 필수
4. 주석으로 사용법 명시

## 📌 참고사항

- 모든 템플릿은 아임웹에서 바로 작동하도록 최적화
- 반응형 디자인 기본 적용 (모바일/태블릿/PC)
- CSS 변수를 활용한 쉬운 커스터마이징
- 크로스 브라우저 호환성 보장

## 🤝 기여 방법

1. 새로운 컴포넌트 추가 시 적절한 폴더에 배치
2. 문서화 필수 (사용법, 커스터마이징 방법)
3. 예제 파일 제공
4. 테스트 완료 후 커밋

## 📞 문의

- 프로젝트 관련 문의사항은 이슈로 등록해주세요.

---

*Last Updated: 2025.09.20*
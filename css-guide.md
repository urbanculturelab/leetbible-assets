# The LEET BIBLE CSS 가이드

## 🎯 추천 방식

### 상황별 최적 선택:

#### 1. **간단한 운영 원할 때** → 통합 CSS
```html
<style>
/* tlb-all.css 내용 전체 복사 */
</style>
```
- 하나의 파일로 모든 페이지 대응
- 아임웹에서 직접 관리

#### 2. **성능 최적화 필요할 때** → 모듈식 CSS
```html
<!-- 각 페이지에 필요한 것만 -->
<link rel="stylesheet" href="tlb-base.css">
<link rel="stylesheet" href="tlb-book-detail.css">
```
- 페이지별 최적화
- 로딩 속도 개선

#### 3. **버전 관리 필요할 때** → GitHub CDN
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/leetbible/imweb-templates@main/css/tlb-all.css">
```
- 중앙 집중 관리
- 업데이트 자동 반영

## 📊 장단점 비교

| 방식 | 장점 | 단점 | 추천 상황 |
|------|------|------|----------|
| **통합 CSS** | • 관리 간편<br>• 설정 한 번 | • 불필요한 코드 포함<br>• 파일 크기 큼 | 페이지 수 적을 때 |
| **모듈식 CSS** | • 최적화<br>• 명확한 구조 | • 여러 파일 관리<br>• 설정 복잡 | 대규모 사이트 |
| **GitHub CDN** | • 버전 관리<br>• 중앙 관리 | • 외부 의존성<br>• 네트워크 필요 | 여러 사이트 운영 |

## 🚀 시작하기

### Step 1: 현재 상황 파악
- 페이지 수: 적음(~10개) → 통합 / 많음(10개+) → 모듈식
- 업데이트 빈도: 자주 → GitHub / 가끔 → 직접 삽입
- 팀 규모: 혼자 → 통합 / 여러명 → GitHub

### Step 2: 초기 설정
1. 일단 `tlb-all.css`로 시작
2. 사이트 완성 후 필요시 모듈 분리
3. 안정화되면 GitHub 배포 고려

## 💡 실무 팁

### 아임웹에서 가장 실용적인 방법:
1. **개발**: `tlb-all.css` 직접 삽입
2. **테스트**: 문제 없으면 그대로 사용
3. **최적화**: 필요시에만 모듈 분리

```html
<!-- 아임웹 HTML 에디터에 -->
<style>
@import url('tlb-all.css 내용');
</style>
```

### 유지보수 편의를 위한 구조:
```
아임웹 관리자
└── 디자인 설정
    └── 사용자 CSS
        └── tlb-all.css 내용 붙여넣기
```

## 🔧 커스터마이징

### 색상만 바꾸고 싶을 때:
```css
:root {
    --tlb-primary: #새로운색상;
    --tlb-secondary: #새로운보조색;
}
```

### 특정 페이지만 수정:
```css
.특정페이지클래스 .tlb_wrapper {
    /* 해당 페이지만 적용 */
}
```

## 📝 결론

**대부분의 경우**: `tlb-all.css` 하나로 충분
- 실제 성능 차이 미미 (gzip 압축 시)
- 관리 편의성이 더 중요
- 필요시 나중에 분리 가능
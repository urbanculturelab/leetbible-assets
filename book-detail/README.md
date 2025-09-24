# LEET BIBLE 교재 상세페이지 템플릿

## 📁 파일 구조

```
book-detail/
├── complete-template.html  # 전체 HTML (스타일 포함)
├── principle-detail.html   # HTML 구조만
├── styles.css             # 분리된 CSS
└── README.md             # 사용 가이드
```

## 🎨 특징

### 1. 아임웹 최적화
- 모든 클래스명에 `tlb_detail_` 접두사 사용으로 충돌 방지
- 아임웹 br 태그 간격 문제 해결 CSS 포함
- 아임웹 에디터에 바로 붙여넣기 가능

### 2. 주요 섹션
- **실물 교재 안내**: 보라색 그라디언트 배지
- **샘플 다운로드**: 깔끔한 다운로드 버튼
- **미디어 공간**: 이미지/영상 삽입 영역
- **교재 정보**: 책 소개, 스펙, 목차, 학습효과

### 3. 디자인 특징
- 모던한 그라디언트 효과
- 반응형 디자인 (모바일 최적화)
- 호버 애니메이션 효과
- 깔끔한 카드 레이아웃

## 🚀 사용 방법

### 아임웹에 적용하기

1. **방법 1: 전체 템플릿 사용**
   - `complete-template.html` 파일 열기
   - 전체 내용 복사
   - 아임웹 HTML 에디터에 붙여넣기

2. **방법 2: 분리된 파일 사용**
   - `principle-detail.html`의 HTML 복사
   - `styles.css`의 스타일을 `<style>` 태그로 감싸서 추가

### 수정 가능한 부분

#### 교재 정보 변경
```html
<h3 class="tlb_book_name_en">Principle I</h3>  <!-- 영문 제목 -->
<h4 class="tlb_book_name_ko">리트바이블 프린시플 (상)</h4>  <!-- 한글 제목 -->
```

#### 샘플 다운로드 링크
```html
<a href="구글드라이브링크" target="_blank" class="tlb_sample_btn">
```

#### 스펙 정보
```html
<div class="tlb_spec_value">684</div>  <!-- 페이지수 -->
<div class="tlb_spec_value">71</div>   <!-- 문제수 -->
```

#### 이미지/영상 추가
```html
<div class="tlb_detail_media_wrapper">
    <!-- 여기에 이미지나 영상 추가 -->
    <img src="이미지URL" alt="설명">
    <iframe src="유튜브URL"></iframe>
</div>
```

## 🎯 주의사항

1. **br 태그 사용시**: 아임웹에서 br 태그 간격이 생기는 문제는 CSS로 해결됨
2. **클래스명 규칙**: 새로운 요소 추가시 `tlb_detail_` 접두사 사용
3. **이모지 사용**: UTF-8 인코딩 확인 필요

## 📝 다른 교재에 적용하기

1. 교재명, 페이지수, 문제수 등 기본 정보 수정
2. 목차 부분을 해당 교재에 맞게 수정
3. 학습 효과 부분을 해당 교재에 맞게 수정
4. 샘플 다운로드 링크 변경

## 🔧 커스터마이징

### 색상 변경
```css
/* 메인 색상 (보라색) 변경 */
.tlb_detail_ship_notice {
    background: linear-gradient(135deg, #새로운색상 0%, #새로운색상2 100%);
}
.tlb_spec_value {
    color: #새로운색상;
}
```

### 폰트 변경
```css
.tlb_detail_wrapper {
    font-family: '원하는폰트', sans-serif;
}
```

## 📱 반응형 브레이크포인트

- 데스크톱: 769px 이상
- 태블릿/모바일: 768px 이하

필요시 미디어쿼리 수정 가능:
```css
@media (max-width: 768px) {
    /* 모바일 스타일 */
}
```
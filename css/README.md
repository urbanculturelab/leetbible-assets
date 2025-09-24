# The LEET BIBLE CSS CDN

## 🚀 CDN 사용법

### jsdelivr CDN 직접 사용 (추천)
```html
<!-- 통합 CSS (모든 스타일 포함) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/css/tlb-all.css">
```

### 아임웹에서 사용
```html
<style>
@import url('https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/css/tlb-all.css');
</style>
```

## 📁 파일 구조

- `tlb-all.css` - 모든 스타일이 통합된 단일 CSS 파일

## 🔄 캐시 갱신

CDN 캐시를 강제로 갱신하려면:
```
https://purge.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/css/tlb-all.css
```

## 📌 버전 관리

특정 버전 고정:
```html
<!-- 버전 태그 사용 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@v1.0.0/css/tlb-all.css">
```
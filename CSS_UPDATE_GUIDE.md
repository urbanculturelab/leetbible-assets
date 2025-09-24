# CSS 수정 가이드

## 📍 CSS 파일 위치
`/The_LEET_BIBLE/imweb-templates/css/tlb-all.css`

## 🔧 CSS 수정 방법

### 1. CSS 파일 수정
```bash
# CSS 파일 열기
code css/tlb-all.css
# 또는 원하는 에디터로 수정
```

### 2. 변경사항 GitHub에 반영
```bash
cd "/Users/tae/Library/CloudStorage/GoogleDrive-ceo@urbanculturelab.kr/내 드라이브/_develop/The_LEET_BIBLE/imweb-templates"
git add css/tlb-all.css
git commit -m "Update CSS: 변경내용 설명"
git push origin main
```

### 3. CDN 캐시 갱신 (필요시)
브라우저에서 이 URL 접속:
```
https://purge.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/css/tlb-all.css
```

## 🎨 자주 수정하는 항목

### 색상 변경
```css
:root {
    --tlb-primary: #667eea;      /* 메인 색상 */
    --tlb-secondary: #764ba2;    /* 보조 색상 */
    --tlb-text-primary: #222;    /* 주요 텍스트 */
}
```

### 여백 조정
```css
.tlb_detail_wrapper {
    padding: 20px;  /* 전체 여백 */
}
```

### 폰트 크기
```css
.tlb_header_title {
    font-size: 32px;  /* 제목 크기 */
}
```

## 💡 빠른 명령어

### CSS 수정 후 한 번에 반영:
```bash
# 이 디렉토리에서
git add css/tlb-all.css && git commit -m "Update CSS" && git push
```

## 📝 주의사항
- 수정 후 1-2분 정도 CDN 반영 시간 필요
- 브라우저 캐시 때문에 안 보이면 강제 새로고침 (Ctrl+Shift+R)
- 모든 클래스명은 `tlb_` 접두사 유지
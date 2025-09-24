# leetbible-assets 레포 초기 세팅 파일

이 파일을 GitHub 레포에 업로드하세요.

## 📁 폴더 구조

```
leetbible-assets/
├── README.md
├── products/
│   └── principle-2027/
│       └── .gitkeep
├── templates/
│   └── .gitkeep
├── authors/
│   └── .gitkeep
└── icons/
    └── .gitkeep
```

## 🚀 업로드 방법

1. https://github.com/urbanculturelab/leetbible-assets 접속
2. "creating a new file" 클릭
3. 파일명: `README.md`
4. 아래 내용 복사-붙여넣기:

---

# 🎨 LEET BIBLE Assets CDN

리트바이블 이미지 자산 저장소 (jsDelivr CDN 연동)

## 📦 CDN URL 구조

```
https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/[폴더]/[파일명]
```

## 📁 폴더 구조

- `products/` - 교재별 이미지
- `templates/` - 공통 템플릿 이미지
- `authors/` - 저자 프로필 사진
- `icons/` - 아이콘 및 로고

## 🔗 사용 예시

```html
<img src="https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main/products/principle-2027/cover.jpg">
```

## 📝 이미지 규격

| 타입 | 크기 | 포맷 |
|-----|------|------|
| 교재 표지 | 600×800 | JPG |
| 히어로 배너 | 1920×800 | JPG |
| 저자 사진 | 400×400 | JPG |
| 아이콘 | 자유 | SVG |
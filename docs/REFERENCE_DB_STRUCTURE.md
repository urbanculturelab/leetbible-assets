# 📚 리트바이블 레퍼런스 데이터베이스 구조

## 🔗 구글 시트 연동 설정

### 마스터 시트 URL
```
https://docs.google.com/spreadsheets/d/[SHEET_ID]/
```

## 📊 시트별 구조

### 1️⃣ 카피라이팅 레퍼런스
**목적**: 검증된 마케팅 카피 수집 및 재사용

**컬럼 구조**:
- `category`: 문제제기 | 권위성 | 긴급성 | 혜택 | 증거 | CTA
- `situation`: 사용 상황 (예: 점수정체, 초시생, N수생)
- `headline`: 메인 헤드라인
- `subtext`: 서브 텍스트
- `source`: 출처 (메가스터디, 해커스 등)
- `performance`: 성과 지표 (CTR, 전환율 등)
- `notes`: 사용 시 주의사항

### 2️⃣ 섹션 구조 템플릿
**목적**: 페이지 구성 요소별 베스트 프랙티스

**컬럼 구조**:
- `section_type`: 히어로 | 문제진단 | 솔루션 | 특징 | 후기 | 가격 | FAQ
- `purpose`: 섹션의 목적
- `required_elements`: 필수 포함 요소
- `layout_type`: 전체너비 | 2단 | 3단 | 카드그리드
- `mobile_layout`: 모바일 레이아웃 변형
- `reference_url`: 참고 URL
- `conversion_impact`: 전환 기여도 (상/중/하)

### 3️⃣ 증거자료 뱅크
**목적**: 신뢰성 구축을 위한 증거 자료 관리

**컬럼 구조**:
- `evidence_type`: 합격수기 | 통계 | 미디어 | 인증 | 수상
- `content`: 구체적 내용
- `detail`: 상세 정보
- `credibility`: 신뢰도 (1-5)
- `usage_guide`: 사용 가이드
- `last_updated`: 최종 업데이트

### 4️⃣ 디자인 패턴
**목적**: 재사용 가능한 디자인 컴포넌트

**컬럼 구조**:
- `pattern_name`: 패턴 이름
- `use_case`: 사용 케이스
- `html_structure`: HTML 구조
- `css_classes`: CSS 클래스명
- `responsive`: 반응형 대응 방법
- `a11y_notes`: 접근성 고려사항
- `performance_notes`: 성능 최적화 팁

### 5️⃣ A/B 테스트 결과
**목적**: 검증된 최적화 데이터

**컬럼 구조**:
- `test_item`: 테스트 항목
- `variant_a`: A안 내용
- `variant_b`: B안 내용
- `winner`: 승자
- `improvement`: 개선율
- `sample_size`: 샘플 크기
- `confidence`: 신뢰구간
- `test_date`: 테스트 일자

### 6️⃣ 경쟁사 벤치마크
**목적**: 업계 트렌드 및 경쟁사 전략 추적

**컬럼 구조**:
- `competitor`: 경쟁사명
- `product_type`: 상품 유형
- `key_message`: 핵심 메시지
- `unique_selling_point`: USP
- `pricing_strategy`: 가격 전략
- `design_style`: 디자인 스타일
- `strengths`: 강점
- `weaknesses`: 약점
- `last_checked`: 최종 확인일

## 🔄 데이터 활용 프로세스

### 1. 데이터 조회
```javascript
// 예시: 문제제기 카피 가져오기
GET: Sheet1.filter(category == "문제제기")
```

### 2. 조합 생성
```javascript
// 섹션 구조 + 카피라이팅 + 디자인 패턴 조합
combineTemplate(section, copy, design)
```

### 3. 성과 피드백
```javascript
// 사용 결과를 다시 DB에 기록
updatePerformance(templateId, metrics)
```

## 📈 지속적 개선

### 주간 업데이트
- 새로운 레퍼런스 추가
- A/B 테스트 결과 반영
- 경쟁사 동향 업데이트

### 월간 분석
- 가장 효과적인 패턴 도출
- 시즌별 트렌드 분석
- 개선 기회 발굴

## 🎯 활용 예시

**"프린시플(상) 2027 상세페이지 만들기"**

1. **카피라이팅**: Sheet1에서 "언어이해" 관련 검증된 카피 선택
2. **구조**: Sheet2에서 교재 상세페이지 최적 구조 선택
3. **증거**: Sheet3에서 관련 합격수기, 통계 선택
4. **디자인**: Sheet4에서 리트바이블 브랜드 패턴 적용
5. **최적화**: Sheet5의 A/B 테스트 승자 버전 적용

이렇게 하면 매번 일관되고 검증된 고품질 페이지 생성 가능!
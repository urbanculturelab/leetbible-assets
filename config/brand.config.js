/**
 * The LEET BIBLE 브랜드 설정
 * 모든 템플릿에서 공통으로 사용하는 브랜드 정보
 */

const BRAND_CONFIG = {
  // 브랜드 기본 정보
  brand: {
    nameKo: '리트바이블',
    nameEn: 'The LEET BIBLE',
    nameShort: 'LEET BIBLE',
    domain: 'leetbible.com',
    slogan: '법학적성시험의 정석',
    subSlogan: '합격을 위한 최적의 선택'
  },

  // 회사 정보 (법적 고지용)
  company: {
    name: '리트바이블',
    businessNumber: 'XXX-XX-XXXXX', // 실제 사업자번호로 변경
    ceo: '대표자명', // 실제 대표자명으로 변경
    address: '서울특별시 강남구 테헤란로 XXX', // 실제 주소로 변경
    phone: '02-XXXX-XXXX', // 실제 전화번호로 변경
    email: 'info@leetbible.com',
    통신판매업신고: '제2024-서울강남-XXXXX호' // 실제 번호로 변경
  },

  // 색상 시스템
  colors: {
    primary: '#962DE3',
    primaryDark: '#7A24BC',
    primaryLight: '#B356F0',
    secondary: '#4FE32D',
    secondaryDark: '#3FC421',
    secondaryLight: '#6FFF4D',
    black: '#0A0A0A',
    dark: '#151515',
    gray: '#666666',
    lightGray: '#AAAAAA',
    white: '#FFFFFF',
    success: '#4FE32D',
    warning: '#FFB800',
    danger: '#FF4444',
    info: '#007AFF'
  },

  // 그라데이션
  gradients: {
    main: 'linear-gradient(135deg, #962DE3 0%, #4FE32D 100%)',
    dark: 'linear-gradient(135deg, #7A24BC 0%, #3FC421 100%)',
    light: 'linear-gradient(135deg, #B356F0 0%, #6FFF4D 100%)'
  },

  // 폰트 설정
  fonts: {
    primary: "'SUITE', -apple-system, sans-serif",
    body: "'SUIT', -apple-system, sans-serif",
    sizes: {
      h1: '48px',
      h2: '36px',
      h3: '28px',
      h4: '24px',
      body: '16px',
      small: '14px',
      xs: '12px'
    },
    weights: {
      thin: 100,
      light: 300,
      regular: 400,
      medium: 500,
      semibold: 600,
      bold: 700,
      extrabold: 800,
      black: 900
    }
  },

  // 레이아웃
  layout: {
    maxWidth: '1200px',
    padding: {
      mobile: '20px',
      tablet: '40px',
      desktop: '60px'
    },
    spacing: {
      section: {
        mobile: '80px',
        desktop: '100px'
      },
      element: {
        small: '20px',
        medium: '40px',
        large: '60px'
      }
    }
  },

  // 브레이크포인트
  breakpoints: {
    mobile: '768px',
    tablet: '1024px',
    desktop: '1440px'
  },

  // 제품 카테고리
  products: {
    categories: {
      'principle-1': '프린시플 언어이해(상)',
      'principle-2': '프린시플 언어이해(하)',
      'reasoning': '추리논증',
      'essay': '논술'
    },
    years: ['2027', '2028', '2029']
  },

  // SEO 기본 설정
  seo: {
    defaultTitle: 'The LEET BIBLE - 법학적성시험의 정석',
    defaultDescription: '현직 변호사가 직접 집필한 LEET 완벽 대비서. 리트바이블과 함께라면 로스쿨 합격이 현실이 됩니다.',
    defaultKeywords: 'LEET, 리트, 법학적성시험, 로스쿨, 리트바이블, The LEET BIBLE, 언어이해, 추리논증, 논술',
    ogImage: 'https://leetbible.com/images/og-image.jpg'
  },

  // 이미지 CDN
  cdn: {
    baseUrl: 'https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main',
    fallbackUrl: 'https://raw.githubusercontent.com/urbanculturelab/leetbible-assets/main'
  },

  // 메시지 템플릿
  messages: {
    cta: {
      primary: '지금 구매하기',
      secondary: '자세히 보기',
      sample: '미리보기',
      inquiry: '문의하기'
    },
    success: {
      order: '주문이 완료되었습니다',
      inquiry: '문의가 접수되었습니다'
    },
    error: {
      general: '오류가 발생했습니다. 다시 시도해주세요.',
      network: '네트워크 연결을 확인해주세요.'
    }
  }
};

// Node.js 환경에서 export
if (typeof module !== 'undefined' && module.exports) {
  module.exports = BRAND_CONFIG;
}

// 브라우저 환경에서 전역 변수로 사용
if (typeof window !== 'undefined') {
  window.LEETBIBLE_BRAND = BRAND_CONFIG;
}
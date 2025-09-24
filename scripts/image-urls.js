/**
 * urbanculturelab/leetbible-assets 이미지 URL 생성 헬퍼
 */

const IMAGE_CDN = {
  // 기본 CDN URL
  baseUrl: 'https://cdn.jsdelivr.net/gh/urbanculturelab/leetbible-assets@main',
  
  // 제품별 이미지 URL 생성
  getProductImages(productId) {
    const base = `${this.baseUrl}/products/${productId}`;
    return {
      // 필수 이미지
      cover: `${base}/cover.jpg`,
      coverThumb: `${base}/cover-thumb.jpg`,
      hero: `${base}/hero.jpg`,
      heroMobile: `${base}/hero-mobile.jpg`,
      
      // 선택 이미지
      preview1: `${base}/preview-01.jpg`,
      preview2: `${base}/preview-02.jpg`,
      preview3: `${base}/preview-03.jpg`,
      
      // 폴백 이미지
      fallbackCover: `${this.baseUrl}/templates/default-cover.jpg`,
      fallbackHero: `${this.baseUrl}/templates/default-hero.jpg`
    };
  },
  
  // 저자 이미지 URL
  getAuthorImage(authorId) {
    return `${this.baseUrl}/authors/${authorId}.jpg`;
  },
  
  // 템플릿 이미지 URL
  getTemplateImage(imageName) {
    return `${this.baseUrl}/templates/${imageName}`;
  },
  
  // 아이콘 URL
  getIcon(iconName) {
    return `${this.baseUrl}/icons/${iconName}.svg`;
  },
  
  // HTML 이미지 태그 생성
  createImageTag(url, alt, fallbackUrl) {
    return `<img 
      src="${url}" 
      alt="${alt}"
      ${fallbackUrl ? `onerror="this.src='${fallbackUrl}'"` : ''}
      loading="lazy"
      class="tlb-image"
    >`;
  },
  
  // 반응형 picture 태그 생성
  createPictureTag(desktopUrl, mobileUrl, alt) {
    return `
    <picture>
      <source media="(max-width: 768px)" srcset="${mobileUrl}">
      <source media="(min-width: 769px)" srcset="${desktopUrl}">
      <img src="${desktopUrl}" alt="${alt}" loading="lazy">
    </picture>`;
  }
};

// 제품 ID 매핑
const PRODUCTS = {
  'principle-1-2027': '프린시플(상) 2027',
  'principle-2-2027': '프린시플(하) 2027',
  'reasoning-2027': '추리논증 2027',
  'writing-2027': '논술 2027'
};

// 사용 예시
function generateProductPage(productId) {
  const images = IMAGE_CDN.getProductImages(productId);
  
  return `
    <!-- 히어로 섹션 -->
    <section class="tlb-hero" style="background-image: url('${images.hero}')">
      ${IMAGE_CDN.createPictureTag(images.hero, images.heroMobile, PRODUCTS[productId])}
    </section>
    
    <!-- 교재 표지 -->
    <div class="tlb-book-cover">
      ${IMAGE_CDN.createImageTag(images.cover, PRODUCTS[productId] + ' 표지', images.fallbackCover)}
    </div>
    
    <!-- 미리보기 -->
    <div class="tlb-preview">
      ${IMAGE_CDN.createImageTag(images.preview1, '미리보기 1')}
      ${IMAGE_CDN.createImageTag(images.preview2, '미리보기 2')}
    </div>
  `;
}

// Export for use
if (typeof module !== 'undefined') {
  module.exports = { IMAGE_CDN, PRODUCTS };
}
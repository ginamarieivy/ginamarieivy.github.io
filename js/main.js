/* ============================================================
   GINAMARIE IVY — Portfolio Site JS
   ============================================================ */

document.addEventListener('DOMContentLoaded', () => {

  // ----------------------------------------------------------
  // 1. Nav scroll behavior — add .scrolled class
  // ----------------------------------------------------------
  const nav = document.getElementById('nav');
  if (nav) {
    const onScroll = () => {
      if (window.scrollY > 24) {
        nav.classList.add('scrolled');
      } else {
        nav.classList.remove('scrolled');
      }
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll(); // run on load
  }

  // ----------------------------------------------------------
  // 2. Intersection Observer — .fade-up elements
  // ----------------------------------------------------------
  const fadeEls = document.querySelectorAll('.fade-up');
  if (fadeEls.length > 0) {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add('visible');
            observer.unobserve(entry.target);
          }
        });
      },
      { threshold: 0.12, rootMargin: '0px 0px -40px 0px' }
    );
    fadeEls.forEach((el) => observer.observe(el));
  }

  // ----------------------------------------------------------
  // 3. Smooth anchor scrolling (for #work etc.)
  // ----------------------------------------------------------
  document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
    anchor.addEventListener('click', (e) => {
      const id = anchor.getAttribute('href').slice(1);
      const target = document.getElementById(id);
      if (target) {
        e.preventDefault();
        const navHeight = nav ? nav.offsetHeight : 72;
        const top = target.getBoundingClientRect().top + window.scrollY - navHeight - 24;
        window.scrollTo({ top, behavior: 'smooth' });
      }
    });
  });

  // ----------------------------------------------------------
  // 4. Gallery image lightbox (simple version)
  //    Click any gallery image to open full-screen overlay
  // ----------------------------------------------------------
  const galleryItems = document.querySelectorAll('.cs-gallery__item img');
  if (galleryItems.length > 0) {
    // Create overlay element
    const overlay = document.createElement('div');
    overlay.style.cssText = `
      display: none;
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.92);
      z-index: 1000;
      cursor: zoom-out;
      align-items: center;
      justify-content: center;
      padding: 2rem;
    `;
    const overlayImg = document.createElement('img');
    overlayImg.style.cssText = `
      max-width: 100%;
      max-height: 90vh;
      object-fit: contain;
      border-radius: 8px;
      box-shadow: 0 24px 64px rgba(0,0,0,0.5);
    `;
    overlay.appendChild(overlayImg);
    document.body.appendChild(overlay);

    galleryItems.forEach((img) => {
      img.style.cursor = 'zoom-in';
      img.addEventListener('click', () => {
        overlayImg.src = img.src;
        overlayImg.alt = img.alt;
        overlay.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      });
    });

    overlay.addEventListener('click', () => {
      overlay.style.display = 'none';
      document.body.style.overflow = '';
    });

    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') {
        overlay.style.display = 'none';
        document.body.style.overflow = '';
      }
    });
  }

  // ----------------------------------------------------------
  // 5. Active nav link for current page
  // ----------------------------------------------------------
  const currentPath = window.location.pathname;
  document.querySelectorAll('.nav__link').forEach((link) => {
    const href = link.getAttribute('href');
    if (href && !href.startsWith('mailto') && !href.startsWith('#')) {
      // Normalize paths for comparison
      const linkPath = link.pathname || href;
      if (currentPath.includes('about') && href.includes('about')) {
        link.style.color = 'var(--purple-800)';
      }
    }
  });

  // ----------------------------------------------------------
  // 6. Reduced motion: disable animations for users who prefer it
  // ----------------------------------------------------------
  const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  if (prefersReducedMotion) {
    document.querySelectorAll('.fade-up').forEach((el) => {
      el.classList.add('visible');
    });
    const ribbon = document.querySelector('.awards-ribbon__track');
    if (ribbon) ribbon.style.animation = 'none';
    const scrollLine = document.querySelector('.hero__scroll-line');
    if (scrollLine) scrollLine.style.animation = 'none';
  }

});

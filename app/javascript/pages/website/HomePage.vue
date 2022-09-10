<template>
  <div class="page">
    <Hero :data="heroData" />
    <ForEveryonesHealth :data="forEveryonesHealthData" />
    <TrustedPartners :data="trustedPartnersData" />
    <OurFocus :data="ourFocusData" />
    <Testimonials />
    <DiagnosticSolutions />
    <CaseStudies />
    <LetsInnovateTogether :data="letsInnovateTogetherData" />
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import TrustedPartners from '@/partials/website/pages/home/TrustedPartnersPartial.vue'
  import ForEveryonesHealth from '@/partials/website/pages/home/ForEveryonesHealthPartial.vue'
  import OurFocus from '@/partials/website/pages/home/OurFocusPartial.vue'
  import Testimonials from '@/partials/website/pages/home/TestimonialsPartial.vue'
  import DiagnosticSolutions from '@/partials/website/pages/home/DiagnosticSolutionsPartial.vue'
  import CaseStudies from '@/partials/website/pages/home/CaseStudiesPartial.vue'
  import LetsInnovateTogether from '@/partials/website/shared/LetsInnovateTogetherPartial.vue'
  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'home',
    title: 'We Are renegade',
  }

  // ===========================================================================
  // Hero Section Data
  // ===========================================================================
  const heroData: IPageData = {
    id: `${parent.id}-section-hero`,
    copyBlocks: [
      {
        classes: ['hero-block'],
        content: `
          <h1 class="h1">
            <span id="text-we-are" class="multiply">We Are</span>
            <span id="text-renegade" class="multiply">renegade</span>
            <span id="text-at-our-core" class="multiply">At Our Core</span>
          </h1>

          <p class="p1">
            We are a purpose-driven, LGBTQ+ led, Public Benefit Corporation, demanding better health and healthcare for all people.
          </p>
        `,
      },
    ],
    risographs: [
      {
        id: 'yellow-person-with-kid',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/yellow-person-with-kid',
        title: 'yellow-person-with-kid',
        alt: 'yellow person with kid',
        width: 1353,
        height: 2313,
      },

      {
        id: 'blue-person-looking-up',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-person-looking-up',
        title: 'blue-person-looking-up',
        alt: 'blue person looking up',
        width: 1012,
        height: 1038,
      },

      {
        id: 'pink-person',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/pink-person',
        title: 'pink-person',
        alt: 'pink person',
        width: 2672,
        height: 2716,
      },
    ],
  }

  // ===========================================================================
  // Trusted Partners Section Data
  // ===========================================================================
  const trustedPartnersData: IPageData = {
    id: `${parent.id}-section-trusted-partners`,
    copyBlocks: [
      {
        classes: ['our-trusted-partners-block'],
        content: `
          <h5 class="prehead sky-blue-100">
            Our Trusted Partners
          </h5>
        `,
      },
    ],
    images: [
      {
        id: 'ucsf-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/UCSF-logo',
        title: 'UCSF',
        alt: 'UCSF logo',
        width: 243,
        height: 120,
      },

      {
        id: 'united-in-health-san-francisco',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/United-in-Health-San-Francisco-logo',
        title: 'United in Health San Francisco',
        alt: 'United in Health San Francisco logo',
        width: 339,
        height: 213,
      },

      {
        id: 'salvia-direct-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Salvia-Direct-logo',
        title: 'Salvia Direct',
        alt: 'Salvia Direct logo',
        width: 615,
        height: 138,
      },

      {
        id: 'the-town-umoja-health-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/The-Town-Umoja-Health-logo',
        title: 'The Town Umoja Health',
        alt: 'The Town Umoja Health logo',
        width: 252,
        height: 258,
      },

      {
        id: 'bay-pls-logo',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Bay-PLS-logo.png',
        title: 'BayPLS',
        alt: 'BayPLS logo',
        width: 219,
        height: 204,
      },
    ],
  }

  // ===========================================================================
  // For Everyone's Health Section Data
  // ===========================================================================
  const forEveryonesHealthData: IPageData = {
    id: `${parent.id}-section-for-everyones-health`,
    copyBlocks: [
      {
        classes: ['for-health-block'],
        content: `
          <h2 class="p2-bold word-rotator">
            <span>For</span>
            <span>everyone’s</span>
            <span>health</span>
          </h2>
        `,
      },
    ],
    shapes: [
      {
        id: 'shape-home-hero',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/v1660152512/shapes/shape-home-hero.svg',
        width: 2959,
        height: 2079,
      },
    ],
  }

  // ===========================================================================
  // Our Focus Section Data
  // ===========================================================================
  const ourFocusData: IPageData = {
    id: `${parent.id}-section-our-focus`,
    copyBlocks: [
      {
        classes: ['our-focus-block'],
        content: `
          <h2 class="h1 navy-100">Our Focus is Two-fold</h2>
        `,
      },
    ],
    cards: [
      {
        id: 'card-renegade-science',
        headline: 'renegade science',
        content: `<p class="p2">
          We develop diagnostics that identify disease earlier, faster, and more affordably. We
          create our diagnostics in-house, as well as with biotech partners who are also pushing for
          radically improved health outcomes.
          <br /><br />
          <strong>
            By giving people access to these diagnostics, every person can achieve better health.
          </strong>
        </p>`,
        color: `sky-blue-100`,
        link: {
          id: 'link-renegade-science',
          type: 'route-link',
          href: 'renegade-science',
          content: 'Learn More',
        },
      },

      {
        id: 'card-renegade-reach',
        headline: 'renegade reach',
        content: `<p class="p2">
          We create pathways through the healthcare system for distributing diagnostics to people who
          need them most. We do so through our relationships with Community Groups, Hospitals, Clinics,
          and Research Institutions.
          <br /><br />
          <strong>
            By opening pathways through the system, everyone receives better healthcare.
          </strong>
        </p>`,
        color: `magenta-100`,
        link: {
          id: 'link-renegade-reach',
          type: 'route-link',
          href: 'renegade-reach',
          content: 'Learn More',
        },
      },
    ],
  }

  // ===========================================================================
  // Let's Innovate Together Section Data
  // ===========================================================================
  const letsInnovateTogetherData: IPageData = {
    id: `home-section-lets-innovate-together`,
    copyBlocks: [
      {
        classes: ['header-block'],
        content: `
          <h2 class="h1 eggplant-100">
            Let’s Innovate Together
          </h2>

          <p class="p2">
            We partner with biotechnology companies to create novel diagnostic solutions.
          </p>

          <div class="buttons-container">
            <a href="https://reach.renegade.bio/request_call" rel="noopener" target="_blank" class="button button-pill">
              Get in Touch
            </a>
          </div>
        `,
      },
    ],
    cards: [
      {
        id: 'card-who-we-are',
        headline: 'Who We Are',
        content: `
          <p class="p4">
            From how we originated, to who makes up our team, what we create, and the people we serve – we are renegade across all.
          </p>
        `,
        link: {
          id: 'link-who-we-are',
          type: 'route-link',
          href: 'about-us',
          content: 'Learn About Us',
        },
      },

      {
        id: 'card-join-renegade-bio',
        headline: 'Join renegade.bio',
        content: `
          <p class="p4">
            We’re always on the lookout for talented people who are aligned with our mission.
          </p>
        `,
        link: {
          type: 'external',
          id: 'sub-menu-item-careers',
          classes: ['nav-link'],
          content: 'See Careers',
          href: 'https://renegade-bio.breezy.hr/',
          rel: 'noopener',
          target: '_blank',
        },
      },
    ],
    risographs: [
      {
        id: 'yellow-kid-toss',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/yellow-kid-toss',
        title: 'yellow-kid-toss',
        alt: 'yellow kid toss',
        width: 816,
        height: 1932,
      },

      {
        id: 'blue-man',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-man',
        title: 'blue-man',
        alt: 'blue man',
        width: 2202,
        height: 1998,
      },
    ],
  }
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  :deep() {
    .section.hero {
      min-height: 67.3rem;
      padding: 0;

      .container {
        row-gap: 5.9rem;

        .copy-block {
          row-gap: 5.9rem;
        }
      }

      .h1 {
        display: flex;
        flex-direction: column;
        flex: 1 1 100%;
        line-height: normal;

        margin-top: 1rem;

        color: $--color-theme-eggplant-100;

        span {
          text-transform: uppercase;

          // We Are
          &:nth-of-type(3n + 1) {
            color: $--color-theme-magenta-100;
            line-height: 12.5rem;
          }

          // renegade
          &:nth-of-type(3n + 2) {
            color: $--color-theme-sky-blue-100;
            margin: -5.7rem 0 0 9.2rem;
            text-transform: lowercase;
            line-height: 9.9rem;
          }

          // At Out Core
          &:nth-of-type(3n) {
            color: $--color-theme-lemon-yellow-100;
            margin: -3.9rem 0 0 0;
            line-height: 11.5rem;
          }
        }
      }

      p {
        max-width: 47.7rem;
      }

      #yellow-person-with-kid {
        margin-left: 12.8rem;
      }

      #pink-person {
        margin-left: 30.3rem;
      }
    }
  }

  @include for-phone-up {
    // Temp for responsive dev
    #site-header {
      display: none;
    }
  }
</style>

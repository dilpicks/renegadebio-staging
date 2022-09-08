<template>
  <div class="page">
    <HeroHome />
    <TrustedPartners />
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
  import HeroHome from '@/partials/website/pages/home/HeroHomePartial.vue'
  import TrustedPartners from '@/partials/website/pages/home/TrustedPartnersPartial.vue'
  import Testimonials from '@/partials/website/pages/home/TestimonialsPartial.vue'
  import DiagnosticSolutions from '@/partials/website/pages/home/DiagnosticSolutionsPartial.vue'
  import CaseStudies from '@/partials/website/pages/home/CaseStudiesPartial.vue'
  import LetsInnovateTogether from '@/partials/website/shared/LetsInnovateTogetherPartial.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Data
  // ===========================================================================
  // const parent: IPageData = {
  //   id: 'how-we-work',
  //   title: 'How We Work',
  // }

  // const section: IPageData = {
  //   id: 'who-we-are',
  //   title: 'Who We Are',
  // }

  // Replaces the "default" values for the shared partial
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

<style setup lang="scss">
  @import '@/assets/css/breakpoints';

  @include for-phone-up {
    // Temp for responsive dev
    #site-header {
      display: none;
    }
  }
</style>

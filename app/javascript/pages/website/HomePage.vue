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
  import HeroHome from '@/partials/website/pages/home/HeroHomePartial.vue'
  import TrustedPartners from '@/partials/website/pages/home/TrustedPartnersPartial.vue'
  import Testimonials from '@/partials/website/pages/home/TestimonialsPartial.vue'
  import DiagnosticSolutions from '@/partials/website/pages/home/DiagnosticSolutionsPartial.vue'
  import CaseStudies from '@/partials/website/pages/home/CaseStudiesPartial.vue'
  import LetsInnovateTogether from '@/partials/website/shared/LetsInnovateTogetherPartial.vue'
  // import { IPageData } from '@/types/general'

  // const parent: IPageData = {
  //   id: 'how-we-work',
  //   title: 'How We Work',
  // }

  // const section: IPageData = {
  //   id: 'who-we-are',
  //   title: 'Who We Are',
  // }

  const letsInnovateTogetherData = {
    id: `home-section-lets-innovate-together`,
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

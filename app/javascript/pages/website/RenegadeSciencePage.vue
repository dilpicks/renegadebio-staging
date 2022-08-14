<template>
  <Hero :data="heroData" :parent="parent" />
  <DevelopingNovelDiagnostics :data="developingNovelDiagnosticsData" :parent="parent" />
  <OurTechnologyPartners :data="ourTechnologyPartnersData" :parent="parent" />
  <FocusedOnSpecificBiotechnologies :data="focusedOnSpecificBiotechnologiesData" :parent="parent" />
  <LetsInnovateTogether :data="letsInnovateTogetherData" :parent="parent" />
</template>

<script setup lang="ts">
  import Hero from '@/partials/website/pages/renegade_science/HeroPartial.vue'
  import DevelopingNovelDiagnostics from '@/partials/website/pages/renegade_science/DevelopingNovelDiagnosticsPartial.vue'
  import OurTechnologyPartners from '@/partials/website/pages/renegade_science/OurTechnologyPartnersPartial.vue'
  import FocusedOnSpecificBiotechnologies from '@/partials/website/pages/renegade_science/FocusedOnSpecificBiotechnologiesPartial.vue'
  import LetsInnovateTogether from '@/partials/website/LetsInnovateTogetherPartial.vue'
  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'how-we-work',
    title: 'How We Work',
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
            renegade science
          </h1>
          <p class="p2">
            Within renegade.bio, we have two areas of focus that work in tandem to successfully develop and distribute diagnostics to people: <strong>renegade science</strong> and <a href="#"><strong>renegade reach</strong></a>.

          </p>
        `,
      },
    ],
  }

  // ===========================================================================
  // Developing Novel Diagnostics Section Data
  // ===========================================================================
  const developingNovelDiagnosticsData: IPageData = {
    id: `${parent.id}-section-developing-novel-diagnostics`,
    copyBlocks: [
      {
        id: 'content-frame-developing-preventative-diagnostics-in-house-and-in-partnership',
        classes: ['content-frame', 'align-center'],
        content: `
          <h2 class="h2 sky-blue-100">
            Developing preventative diagnostics in-house and in partnership.
          </h2>
          <p class="p2">
            Renegade science develops and seeks out proactive solutions across the diagnostic space. The healthcare industry is positioned to be reactive, costly, and slow—often treating diseases too late. <strong>We can do better</strong>.
          </p>
          <p class="p2">
            We develop proprietary assays internally and with our biotechnology partners, and deploy these assays through our clinical laboratory.
          </p>
        `,
      },

      {
        classes: ['align-center', 'white-text'],
        content: `
          <h2 class="h1 sky-blue-100">
            Developing Novel Diagnostics
          </h2>
          <p class="p2">
            Our in-house R&D team develops novel diagnostics and assays that support drug development, leveraging capabilities and experience in biomarker discovery, PCR, NGS, and LCMS. We strive to make these diagnostics available on high-throughput platforms, which operate within the renegade network of laboratories.
          </p>
          <p class="p2">
            Our focus within the diagnostics space centers on:
          </p>
        `,
      },
    ],
    cards: [
      // Infectious Diseases
      {
        id: 'card-infectious-diseases',
        classes: ['content-frame', 'align-center'],
        headline: 'Infectious Diseases',
        image: {
          id: 'card-image-infectious-diseases',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-virus.svg',
          title: 'Infectious Diseases - Virus Icon',
          alt: 'Virus Icon',
          width: 128,
          height: 128,
        },
        link: {
          id: 'link-learn-more',
          type: 'route-link',
          href: 'infectious-diseases',
          content: 'Learn More',
        },
      },

      // Reproductive Health
      {
        id: 'card-reproductive-health',
        classes: ['content-frame', 'align-center'],
        headline: 'Reproductive Health',
        image: {
          id: 'card-image-reproductive-health',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-dna.svg',
          title: 'Reproductive Health - DNA Icon',
          alt: 'DNA Icon',
          width: 155,
          height: 128,
        },
        link: {
          id: 'link-learn-more',
          type: 'route-link',
          href: 'reproductive-health',
          content: 'Learn More',
        },
      },

      // Metabolic & Cardiovascular Health
      {
        id: 'card-metabolic-and-cardiovascular-health',
        classes: ['content-frame', 'align-center'],
        headline: 'Infectious Diseases',
        image: {
          id: 'card-image-metabolic-and-cardiovascular-health',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-heart.svg',
          title: 'Metabolic & Cardiovascular Health - Heart Icon',
          alt: 'Heart Icon',
          width: 128,
          height: 128,
        },
        link: {
          id: 'link-learn-more',
          type: 'route-link',
          href: 'cardiovascular-health',
          content: 'Learn More',
        },
      },
    ],
  }

  // ===========================================================================
  // Our Technology Partners Section Data
  // ===========================================================================
  const ourTechnologyPartnersData: IPageData = {
    id: `${parent.id}-section-our-technology-partners`,
    copyBlocks: [
      {
        content: `
          <h2 class="h1 eggplant-100">
            Our Technology Partners
          </h2>
          <p class="p1">
            We partner with novel diagnostic developers to bring their tests to the US market.
          </p>
          <p class="p2">
            We manage assay validation, as well as distribution and back-end data collection for our partners. Our expertise ranges across clinical research, protocol development, clinical studies, regulatory navigation, analysis and reporting.
          </p>
        `,
      },

      {
        id: 'collaboration-stages',
        classes: ['content-frame'],
        content: `
          <h2 class="h2 navy-100">
            Collaboration Stages
          </h2>
          <p class="p2">
            While each partnership is unique, we generally approach our collaboration as stages from assessment through product deployment and publication.
          </p>
          <div class="image-contaienr">
            <img src="https://res.cloudinary.com/renegade-bio/image/upload/f_auto,q_auto,w_1134,h_377/dpr_2.0/graphics/colab-stages" title="Collaboration Stages" alt="Assessment & Data Analysis, Protocol Development, Go-to-Market Strategy" width="1134" height="377" />
          </div>
        `,
      },
    ],
  }

  // ===========================================================================
  // Our Technology Partners Section Data
  // ===========================================================================
  const focusedOnSpecificBiotechnologiesData: IPageData = {
    id: `${parent.id}-section-our-technology-partners`,
    copyBlocks: [
      {
        content: `
          <h2 class="h1 sky-blue-100">
            Focused on Specific Biotechnologies
          </h2>
          <p class="p1">
            Our technology pipelines support diagnostic and therapeutic applications by providing the tools we need to create and implement novel assays.
          </p>
        `,
      },

      {
        id: 'collaboration-stages',
        classes: ['content-frame'],
        content: `
          <h2 class="h2 navy-100">
            Collaboration Stages
          </h2>
          <p class="p2">
            While each partnership is unique, we generally approach our collaboration as stages from assessment through product deployment and publication.
          </p>
          <div class="image-contaienr">
            <img src="https://res.cloudinary.com/renegade-bio/image/upload/f_auto,q_auto,w_1134,h_377/dpr_2.0/graphics/colab-stages" title="Collaboration Stages" alt="Assessment & Data Analysis, Protocol Development, Go-to-Market Strategy" width="1134" height="377" />
          </div>
        `,
      },
    ],
  }

  // ===========================================================================
  // Lets Innovate Together Section Data
  // ===========================================================================
  const letsInnovateTogetherData: IPageData = {
    id: `${parent.id}-section-lets-innovate-together`,
    risographs: [
      {
        id: 'blue-woman-smiling',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-woman-smiling',
        title: 'blue-woman-smiling',
        alt: 'blue woman smiling',
        width: 2610,
        height: 1971,
      },
    ],
  }
</script>

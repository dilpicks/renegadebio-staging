<template>
  <div :id="`${parent.id}-page`" class="page">
    <Hero :data="heroData" :parent="parent" />
    <CaseStudiesCollection :data="caseStudiesCollectionData" :parent="parent" />
    <NewsAndPublications :data="newsAndPublicationsData" :parent="parent" />
    <MailingListSignUp :data="mailingListData" :parent="parent" />
  </div>
</template>

<script setup lang="ts">
  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import CaseStudiesCollection from '@/partials/website/pages/case_studies/CaseStudiesCollectionPartial.vue'
  import NewsAndPublications from '@/partials/website/pages/case_studies/NewsAndPublicationsPartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'

  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'case-studies',
    title: 'Case Studies',
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
          <h5 class="p2-bold prehead">Diagnostic Solutions</h5>
          <h1 class="h1 eggplant-100">
            Infectious Diseases
          </h1>

          <p class="p2">
            We leverage our surveillance efforts to statistically identify areas of need, and create diagnostics that detect and prevent the spread of novel pathogens.
          </p>
        `,
      },
    ],
    images: [
      {
        id: 'purple-scientists-with-test-tubes',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/purple-scientists-with-test-tubes',
        title: 'purple scientists with test tubes',
        alt: 'purple scientists with test tubes',
        width: 2175,
        height: 1842,
      },
    ],
    shapes: [
      {
        id: 'shape-section-hero-header-background',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-section-header-background.svg',
        width: 1983,
        height: 3053,
      },
    ],
  }

  // ===========================================================================
  // Case Studies Collection Section Data
  // ===========================================================================
  const caseStudiesCollectionData: IPageData = {
    id: `${parent.id}-section-case-studies-collection`,
    tabCollection: {
      id: 'case-studies-tab-collection',
      tabList: [
        // Infectious Disease Diagnostics
        {
          id: 'tab-infectious-disease-diagnostics',
          headline: 'Infectious Disease Diagnostics',
          image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
          content: `
            <p class="p2">
              We seek out improved technologies toward testing for infectious diseases, from diagnostic solutions for COVID-19; as well as testing for STIs, and solutions that lead toward improved sexual health.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'case-studies',
            content: 'Learn More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
          // classes: ['magenta-100'],
        },

        // Reproductive Health Diagnostics
        {
          id: 'tab-reproductive-health-diagnostics',
          headline: 'Reproductive Health Diagnostics',
          image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
          content: `
            <p class="p2">
              We develop diagnostics for reproductive health, including testing for preeclampsia – Providing maternal health physicians with the insights to better identify at-risk pregnancies and improve their outcomes.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'reproductive-health',
            content: 'Learn More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
          // classes: ['magenta-100'],
        },

        // Cardiovascular Health Diagnostics
        {
          id: 'tab-cardiovascular-health-diagnostics',
          headline: 'Cardiovascular Health Diagnostics',
          image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
          content: `
            <p class="p2">
              By leveraging the power of small molecules, we are working to predict cardiovascular disease risk, enabling clinicians and physicians to intervene in this deadly disease much earlier.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'cardiovascular-health',
            content: 'Learn More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
          // classes: ['magenta-100'],
        },

        // Innovations in Diagnostics
        {
          id: 'tab-innovations-in-diagnostics',
          headline: 'Innovations in Diagnostics',
          image: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/tab-image-placeholder',
          content: `
            <p class="p2">
              Focused on innovation around disease prevention, we conduct R&D to explore human and planetary diagnostic solutions, leveraging PCR/qRT-PCR, LCMS, NGS, and Cobas.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'innovations-in-diagnostics',
            content: 'Learn More?',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
          // classes: ['magenta-100'],
        },
      ],
    },
  }

  // ===========================================================================
  // News & Publications Section Data
  // ===========================================================================
  const newsAndPublicationsData: IPageData = {
    id: `${parent.id}-section-news-and-publications`,
    copyBlocks: [
      {
        classes: ['news-and-publications-block', 'align-center'],
        content: `
          <h2 class="h1 navy-100">
            News & Publications
          </h2>
        `,
      },
    ],
    cards: [
      {
        id: 'card-covid-19',
        prehead: 'COVID-19',
        headline: 'Umoja Health',
        content: `
          <p class="p2">
            Working together with Umoja Health to expand COVID-19 testing, we were able to tailor our diagnostic distribution strategy to reflect the needs of the community, increasing testing across East Oakland, California.
          </p>
        `,
        image: {
          id: 'card-image-case-study-covid-19-umoja-health',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'COVID-19 Umoja Health Case Study',
          alt: 'COVID-19 Umoja Health Case Study',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-case-studies',
          type: 'route-link',
          href: 'case-studies',
          content: 'See Case Study',
        },
      },

      {
        id: 'card-preeclampsia',
        prehead: 'Preeclampsia',
        headline: 'Metabolomic Dx',
        content: `
          <p class="p2">
            In partnership with Metabolomic Dx, renegade.bio developed PrePsia USA, a comprehensive assessment of biomarkers that allows detection of preeclampsia risks as early as 13 weeks of pregnancy.
          </p>
        `,
        image: {
          id: 'card-image-case-study-preeclampsia-metabolomic-dx',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Preeclampsia Metabolomic Dx Case Study',
          alt: 'Preeclampsia Metabolomic Dx Case Study',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-case-studies',
          type: 'route-link',
          href: 'case-studies',
          content: 'See Case Study',
        },
      },

      {
        id: 'card-fertility-health',
        prehead: 'Fertility Health',
        headline: 'Microgenesis',
        content: `
          <p class="p2">
            Microgenesis transforms fertility health with unparalleled analysis and support of a balanced vaginal microbiome. Together, we’re able to offer a novel and more accessible pathway to parenthood.
          </p>
        `,
        image: {
          id: 'card-image-case-study-fertility-health-microgenesis',
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/case-studies-placeholder',
          title: 'Fertility Health Microgenesis Case Study',
          alt: 'Fertility Health Microgenesis Case Study',
          width: 1224,
          height: 711,
        },
        link: {
          id: 'link-case-studies',
          type: 'route-link',
          href: 'case-studies',
          content: 'See Case Study',
        },
      },
    ],
  }

  // ===========================================================================
  // Mailing List Sign Up Data
  // ===========================================================================
  const mailingListData: IPageData = {
    id: `${parent.id}-section-mailing-list-sign-up`,
    copyBlocks: [
      {
        content: `
          <h3 class="h3 sky-blue-100">Keep up with our latest developments in diagnostic testing.</h3>
        `,
      },
    ],
  }
</script>

<style setup lang="scss">
  #case-studies-page {
    .section.hero {
      min-height: unset;

      .container {
        justify-content: space-between;
        max-height: 62rem;

        .copy-block,
        > .image-container {
          z-index: 2;
        }
      }

      .copy-block {
        .prehead {
          color: $--color-theme-navy-100;
        }

        &.hero-block {
          flex: 0 1 39%;
        }
      }

      // #shape-section-hero-header-background {
      //   top: -79rem;
      //   right: -134rem;

      //   width: 198.3rem;
      //   // max-height: 133.7rem;
      //   // opacity: 0.95;
      //   // left: 63.1rem;
      //   // bottom: 0;
      //   background-position-x: right;
      //   background-position-y: center;

      //   clip-path: polygon(0 0, 100% 0, 100% 54.5%, 0 54.5%);
      // }

      #shape-section-hero-header-background {
        top: -12rem;
        left: 62rem;
        max-height: calc(100% + 13.5rem);
        width: 198.3rem;
        background-position-x: 0rem;
        background-position-y: -79rem;
      }
    }
  }
</style>

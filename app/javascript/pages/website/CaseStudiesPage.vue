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
          <h5 class="p2-bold prehead eggplant-110">
            Case Studies
          </h5>

          <h1 class="h1 navy-100">
            We are <span class="magenta-100">renegade</span> together with our valued partners
          </h1>

          <p class="p2">
           Our partnerships with biotech companies and community groups are what help us bring novel technologies to market, and to the communities of people who need them most. Here’s a look at a few we are working with to create impact together.
          </p>
        `,
      },
    ],
    risographs: [
      {
        id: 'pink-children-smiling',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/pink-children-smiling',
        title: 'pink children smiling',
        alt: 'pink children smiling',
        width: 1800,
        height: 1664,
      },

      {
        id: 'blue-woman-smiling',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/risographs/blue-woman-smiling',
        title: 'blue woman smiling',
        alt: 'blue woman smiling',
        width: 1980,
        height: 2529,
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
        // Umoja Health
        {
          id: 'tab-umoja-health-case-study',
          headline: 'Umoja Health',
          image:
            'https://res.cloudinary.com/renegade-bio/image/upload/photos/tab-umoja-health-sf-bay-area-family',
          content: `
            <p class="p2">
              COVID-19 has unequally affected many racial and ethnic minority groups, putting them <a href="https://www.cdc.gov/coronavirus/2019-ncov/community/health-equity/racial-ethnic-disparities/disparities-illness.html" rel="noopener" target="_blank">more at risk</a> of getting sick and dying from COVID-19. In working with community group Umoja Health, we were able to tailor our diagnostic distribution strategy to reflect community needs, increasing testing across East Oakland, California.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'case-studies',
            content: 'Read More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
        },

        // Metabolomic Dx
        {
          id: 'tab-metabolomic-dx-case-study',
          headline: 'Metabolomic Dx',
          image:
            'https://res.cloudinary.com/renegade-bio/image/upload/photos/tab-metabolomic-healthy-family',
          content: `
            <p class="p2">
              PrePsia USA, developed in partnership with Metabolomic Dx, is a comprehensive assessment of biomarkers that allows detection of preeclampsia risks as early as 13 weeks of pregnancy. By more readily detecting preeclampsia risk, we can reduce mortality by 62%.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'reproductive-health',
            content: 'Read More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
        },

        // Microgenesis
        {
          id: 'tab-microgenesis-case-study',
          headline: 'Microgenesis',
          image:
            'https://res.cloudinary.com/renegade-bio/image/upload/photos/tab-microgenesis-new-moms-and-babies',
          content: `
            <p class="p2">
              Microgenesis transforms fertility health with unparalleled analysis and support of a balanced gut microbiome. Early data indicate that this test has the ability to drive up pregnancy rates in those experiencing unexplained infertility.
            </p>
          `,
          link: {
            type: 'route-link',
            href: 'cardiovascular-health',
            content: 'Read More',
            classes: ['magenta-100', 'button', 'button-pill'],
          },
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
        classes: ['news-and-publications-block'],
        content: `
          <h2 class="h1 navy-100">
            News & Publications
          </h2>

          <p class="p2">
            The latest news, research, and testing information from renegade.bio. Check back regularly for our latest updates.
          </p>
        `,
      },
    ],
    cards: [
      {
        id: 'card-covid-19',
        prehead: 'Publication',
        headline: 'Rethinking Diagnostics to Reduce Healthcare Disparities',
        content: `
          <p class="p2">
            renegade.bio Teams Up with Umoja Health/BayPLS and Alameda County for COVID-19 Vaccine Distribution and Testing in Underserved Bay Area Communities
          </p>
        `,
        link: {
          type: 'external',
          href: 'https://uploads-ssl.webflow.com/5e7990d36b5f52b23ef1ce9a/6286b57202779d7e4616a6ea_20220427_201649-c-th.jpg',
          rel: 'noopener',
          target: '_blank',
          content: 'Read More',
        },
      },

      {
        id: 'card-preeclampsia',
        prehead: 'Press Release',
        headline:
          'renegade.bio Announces Partnership with Metabolomic Diagnostics to Reduce Pre-eclampsia-related Infant and Maternal Death',
        content: `
          <p class="p2">
            Renegade.bio Announces Partnership with Metabolomic Diagnostics to Reduce Pre-eclampsia-related Infant and Maternal Death
          </p>
        `,
        link: {
          type: 'external',
          href: 'https://uploads-ssl.webflow.com/5e7990d36b5f52b23ef1ce9a/620c015335b2441657ddf14b_PR-renegadebio-metabolomic-diagnostics-140222.docx',
          rel: 'noopener',
          target: '_blank',
          content: 'Read More',
        },
      },

      {
        id: 'card-fertility-health',
        prehead: 'Press Release',
        headline:
          'renegade.bio Teams Up with Umoja Health/BayPLS and Alameda County for COVID-19 Vaccine Distribution and Testing in Underserved Bay Area Communities',
        content: `
          <p class="p2">
            Rethinking Diagnostics to Reduce Healthcare Disparities
          </p>
        `,
        link: {
          type: 'external',
          href: 'https://uploads-ssl.webflow.com/5e7990d36b5f52b23ef1ce9a/606380b49928317a6cb414f8_Vaccine%20Press%20Release_033021.docx',
          rel: 'noopener',
          target: '_blank',
          content: 'Read More',
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
      // min-height: unset;
      min-height: 70.4rem;

      .container {
        justify-content: space-between;
        max-height: 62rem;

        .copy-block,
        > .image-container {
          z-index: 2;
        }
      }

      .copy-block {
        &.hero-block {
          flex: 0 1 77%;

          p {
            max-width: 79%;
          }
        }
      }

      #pink-children-smiling {
        top: 18rem;
        left: 20rem;
      }

      #blue-woman-smiling {
        right: -41rem;
        top: 2rem;
      }
    }
  }
</style>

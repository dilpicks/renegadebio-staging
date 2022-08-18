<template>
  <div :id="`${parent.id}-page`" class="page">
    <Hero :data="heroData" :parent="parent" />
    <Covid19 :data="covid19Data" :parent="parent" />
    <SexualHealth :data="sexualHealthData" :parent="parent" />
    <EquitableCare :data="equitableCareData" :parent="parent" :debug="false" />
    <MailingListSignUp :data="mailingListData" :parent="parent" />
  </div>
</template>

<script setup lang="ts">
  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import Covid19 from '@/partials/website/pages/infectious_diseases/Covid19Partial.vue'
  import SexualHealth from '@/partials/website/pages/infectious_diseases/SexualHealthPartial.vue'
  import EquitableCare from '@/partials/website/shared/EquitableCarePartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'
  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'infectious-diseases',
    title: 'Infectious Diseases',
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
  // Covid-19 Section Data
  // ===========================================================================
  const covid19Data: IPageData = {
    id: `${parent.id}-section-covid-19`,
    copyBlocks: [
      {
        classes: ['covid-19-block', 'align-center'],
        content: `
          <h2 class="h1 magenta-100">
            COVID-19
          </h2>

          <p class="p2">
            We have COVID-19 testing solutions to support a variety of needs: For travelers, for large groups, and no cost solutions. Additionally, our Lab Partner Program helps local and regional diagnostic labs better-serve their communities’ COVID-19 testing needs.
          </p>

          <div class="button-container">
            <a href="#" rel="noopener" target="_blank" class="button button-pill lrg magenta-100">
              See Our Solutions
            </a>
          </div>
        `,
      },
    ],
    cards: [
      // Biotech Partners & Research Institutions
      {
        id: 'card-chart-covid-19',
        type: 'adjacent-image-card',
        content: `
          <p class="p3">
            In March 2020, when COVID-19 was officially declared a pandemic, renegade.bio quickly sprang into action. Optimizing a process that required extensive labor and preparation, our science directly supported communities by providing PCR testing with less than 24 hour turnaround times starting in June 2020.
          </p>
          <p class="p3">
            During our first year—while our technology was in development—we tested over 40,500 people, including nearly 7,000 tests provided at no-cost to members of the community. By our second year, we more than tripled that reach to include more than 173,000 tests for Bay Area residents.
          </p>
          <div class="button-container">
            <a href="#" rel="noopener" target="_blank" class="button button-pill lrg sky-blue-100">Read Our Case Study</a>
          </div>
        `,
        image: {
          id: 'card-image-chart-covid-19',
          classes: ['content-frame'],
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/charts/chart-covid-19.svg',
          title: 'COVID-19 Chart',
          alt: 'COVID-19 Tests Chart',
          width: 620,
          height: 440,
        },
      },
    ],
  }

  // ===========================================================================
  // Sexual Health Section Data
  // ===========================================================================
  const sexualHealthData: IPageData = {
    id: `${parent.id}-section-sexual-health`,
    copyBlocks: [
      {
        classes: ['sexual-health-block', 'align-center'],
        content: `
          <h2 class="h1 sky-blue-100">
            STIs & Sexual Health
          </h2>

          <p class="p2">
            Our R&D team is currently developing diagnostic solutions to improve outcomes within sexual health.
          </p>
        `,
      },
    ],
    cards: [
      // STIs on the Rise in the United States
      {
        id: 'card-chart-sexual-health',
        classes: ['align-left'],
        type: 'adjacent-image-card',
        content: `
          <h3 class="h3 eggplant-100">
            STIs on the Rise in the United States
          </h3>
          <p class="p3">
            There are approximately 42.5 million cases of human papillomavirus (HPV) each year, with at least 75% of the reproductive-age population having been exposed. HPV is known to cause numerous reproductive cancers.
          </p>
          <p class="p3">
            Furthermore, 1 in 5 Americans has a sexually transmitted infection, according to the Centers for Disease Control and Prevention. Additionally, they reported that for the 6th consecutive year STD cases are on the rise, from approximately 1.9 million reported new STD cases in 2014 up to 2.6 million in 2019 with racial and ethnic minorities, gay and bisexual men, and youth the most affected.
          </p>
        `,
        image: {
          id: 'card-image-chart-sexual-health',
          classes: ['content-frame'],
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/charts/chart-stis-on-the-rise.svg',
          title: 'STIs on the Rise Chart',
          alt: 'STIs on the Rise Chart',
          width: 620,
          height: 420,
        },
      },

      // Biotech Partners & Research Institutions
      {
        id: 'card-chart-sexual-health',
        classes: ['align-right'],
        type: 'adjacent-image-card',
        content: `
          <h3 class="h3 eggplant-100">
            Antibiotic Resistant Gonorrhea
          </h3>
          <p class="p3">
            Gonorrhea is the United States second most frequently diagnosed bacterial STI, after Chlamydia. Although instances of gonorrhea were at a historic low in 2009, reported cases have increased nearly 92% over the past decade.
          </p>
          <p class="p3">
            Additionally, antibiotic resistant gonorrhea is on the rise, with viable treatment options running out. By 2050, more people are expected to die per year from antimicrobial resistance than cancer.
          </p>
          <p class="p3">
            Through testing and sequencing, we can track antibiotic resistance, and support the development of novel therapeutic strategies against emergent strains of gonorrhea.
          </p>
        `,
        image: {
          id: 'card-image-chart-sexual-health',
          classes: ['content-frame'],
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/charts/chart-antibiotic-resistant-gonorrhea.svg',
          title: 'Antibiotic-Resistant Gonorrhea Chart',
          alt: 'Antibiotic-Resistant Gonorrhea Chart',
          width: 620,
          height: 468,
        },
      },
    ],
  }

  // ===========================================================================
  // Equitable Care Section Data
  // ===========================================================================
  const equitableCareData: IPageData = {
    id: `${parent.id}-section-equitable-care`,
    copyBlocks: [
      {
        classes: ['equitable-care-block'],
        content: `
          <h2 class="h1 white">
            An eye on equitable care
          </h2>
        `,
      },
    ],
    cards: [
      // STIs on the Rise in the United States
      {
        id: 'card-chart-equitable-care',
        classes: [''],
        type: 'adjacent-image-card',
        content: `
          <h3 class="h2 eggplant-60">
            Inequalities Impact Communities
          </h3>

          <p class="p2 white">
            Systemic inequalities—like access, affordability, and communication barriers—all contribute to a greater rate of infection in many communities.
          </p>

          <ul class="arrow-list p3 eggplant-60">
            <li class="white">
              African American or Black people are 5-8 times more likely to experience infection
            </li>
            <li class="white">
              American Indian or Alaska Native and Native Hawaiian or Other Pacific Islander people are 3-5 times more likely
            </li>
            <li class="white">
              Hispanic or Latino people are 1-2 times more likely to become infected
            </li>
            <li class="white">
              Gay and bisexual men accounted for nearly half of all 2019 primary and secondary syphilis cases
            </li>
          </ul>
        `,
        image: {
          id: 'card-image-chart-equitable-care',
          classes: ['content-frame'],
          src: 'https://res.cloudinary.com/renegade-bio/image/upload/charts/chart-rates-of-infections.svg',
          title: 'Rates of Infections Chart',
          alt: 'Rates of Infections Chart',
          width: 620,
          height: 545,
        },
      },
    ],
    shapes: [
      {
        id: 'shape-section-equitable-care-background',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/shapes/shape-common-site-double-helix.svg',
        width: 1194,
        height: 3053,
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
  #infectious-diseases-page {
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

<template>
  <div :id="`${parent.id}-page`" class="page">
    <Hero :data="heroData" :parent="parent" />
    <Tests :data="testsData" :parent="parent" />
    <MailingListSignUp :data="mailingListData" :parent="parent" />
  </div>
</template>

<script setup lang="ts">
  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import Tests from '@/partials/website/pages/test_directory/TestsPartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'
  import { IPageData } from '@/types/general'

  const parent: IPageData = {
    id: 'test-directory',
    title: 'Test Directory',
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
          <h5 class="prehead eggplant-110">
            Test Directory
          </h5>

          <h1 class="h1 navy-100">
            Find the right test for your patients
          </h1>
        `,
      },
    ],
    images: [
      {
        id: 'purple-man-woman-and-child',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/photos/purple-man-woman-and-child',
        title: 'purple man woman and child',
        alt: 'purple man woman and child',
        width: 2178,
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
  // Tests Section Data
  // ===========================================================================
  const testsData: IPageData = {
    id: `${parent.id}-section-sexual-health`,
    copyBlocks: [
      {
        id: 'test-directory-legal',
        classes: ['legal-block'],
        content: `
          <p class="p4 navy-100">
            © 2022 renegade.bio, LLC. All Rights Reserved.
          </p>

          <h4 class="h4 eggplant-110">
            CPT Statement/Profile Statement
          </h4>

          <p class="p4 navy-100">
            This material contains content from LOINC® (http://loinc.org). The LOINC Table, LOINC Table Core are copyright © 1995-2019, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at <a href="http://loinc.org/license" rel="noopener" target="_blank">http://loinc.org/license</a>.
          </p>
        `,
      },

      {
        id: 'test-directory-for-providers-cta',
        classes: ['content-frame', 'padded', 'cta-frame'],
        content: `
          <h3 class="h3 sky-blue-100">
            For Providers: Support Patients with Highly-Accurate Testing & Same-Day Onboarding
          </h3>
          <div class="buttons-container">
            <a href="#" rel="noopener" target="_self" class="button pill-button lrg">Order Your Test Now</a>
          </div>
        `,
      },
    ],
    testList: {
      id: 'test-directory-tests',
      testItems: [
        // Test 000000
        {
          id: 'test-000000',
          classes: ['align-left'],
          number: '000000',
          name: 'STI Test Panel 000000, Phase 1',
          specimen: 'Specimen 000000',
          createdAt: '01/01/2022',
        },

        // Test 000001
        {
          id: 'test-000001',
          classes: ['align-left'],
          number: '000001',
          name: 'STI Test Panel 000001, Phase 1',
          specimen: 'Specimen 000001',
          createdAt: '01/01/2022',
          updatedAt: '01/02/2022',
        },

        // Test 000002
        {
          id: 'test-000002',
          classes: ['align-left'],
          number: '000002',
          name: 'STI Test Panel 000002, Phase 1',
          specimen: 'Specimen 000002',
          createdAt: '01/01/2022',
          updatedAt: '01/03/2022',
        },

        // Test 000003
        {
          id: 'test-000003',
          classes: ['align-left'],
          number: '000003',
          name: 'STI Test Panel 000003, Phase 1',
          specimen: 'Specimen 000003',
          createdAt: '01/01/2022',
          updatedAt: '01/04/2022',
        },

        // Test 000004
        {
          id: 'test-000004',
          classes: ['align-left'],
          number: '000004',
          name: 'STI Test Panel 000004, Phase 1',
          specimen: 'Specimen 000004',
          createdAt: '01/01/2022',
          updatedAt: '01/05/2022',
        },

        // Test 000005
        {
          id: 'test-000005',
          classes: ['align-left'],
          number: '000005',
          name: 'STI Test Panel 000005, Phase 1',
          specimen: 'Specimen 000005',
          createdAt: '01/01/2022',
          updatedAt: '01/06/2022',
        },
      ],
    },
  }

  // ===========================================================================
  // Mailing List Sign Up Data
  // ===========================================================================
  const mailingListData: IPageData = {
    id: `${parent.id}-section-mailing-list-sign-up`,
    copyBlocks: [
      {
        content: `
          <h3 class="h3 sky-blue-100">Keep up with our latest developments in test testing.</h3>
        `,
      },
    ],
  }
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  :deep() {
    .section.hero {
      gap: 4.6rem;
      min-height: unset;

      $container-gap: 4.6rem;
      $image-container-bias: 60%;

      .container {
        justify-content: space-between;
        max-height: none;
        gap: $container-gap;

        @include for-desktop-mid-up {
          max-height: 60rem;
        }

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
          flex: 1 1 auto;

          @include for-desktop-mid-up {
            flex: 0 1 calc(100% - $image-container-bias);
          }
        }
      }

      .image-container {
        justify-content: center;
        align-self: center;
        flex: 1 1 auto;
        // min-width: 54.4rem;

        @include for-desktop-mid-up {
          justify-content: flex-end;
          flex: 0 1 calc($image-container-bias - $container-gap);
        }

        img {
          width: 100%;
        }
      }

      #shape-section-hero-header-background {
        top: -12rem;
        left: 62rem;
        max-height: calc(100% + 13.5rem);
        width: 198.3rem;
        background-position-x: 0rem;
        background-position-y: -79rem;
      }

      #test-directory-for-providers-cta {
        order: 1;
      }

      #test-directory-tests {
        order: 2;
      }

      #test-directory-legal {
        order: 3;
      }
    }
  }
</style>

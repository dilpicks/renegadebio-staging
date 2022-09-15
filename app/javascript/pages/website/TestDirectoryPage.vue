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
            <a href="https://reach.renegade.bio/provideronboarding" rel="noopener" target="_self" class="button pill-button lrg">Order Your Test Now</a>
          </div>
        `,
      },
    ],
    testList: {
      id: 'test-directory-tests',
      testItems: [
        {
          id: 'test-1001',
          classes: ['align-left'],
          number: '1001',
          name: 'C. trachomatis/N. gonorrhoeae PCR, High-Sensitivity, Qualitative NAAT',
          specimen: 'Cervical; Endocervical, Vaginal, Anorectal & Oropharyngeal; Urine',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1002',
          classes: ['align-left'],
          number: '1002',
          name: 'HIV-1 Quantitative Viral Load NAAT',
          specimen: 'Plasma (EDTA) Plasma (PPTTM)',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1003',
          classes: ['align-left'],
          number: '1003',
          name: 'HIV-1/2 PCR, High-Sensitivity, Qualitative NAAT',
          specimen: 'Plasma (EDTA) Serum (SST)',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1004',
          classes: ['align-left'],
          number: '1004',
          name: 'Hepatitis B Virus (HBV) Quantitative Viral Load NAAT',
          specimen: 'Serum (SST) Plasma (EDTA) Plasma (PPT)',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1005',
          classes: ['align-left'],
          number: '1005',
          name: 'HPV High Risk or HPV High Risk Plus Genotyping Test PCR, High-Sensitivity, Qualitative NAAT',
          specimen: 'Cervical',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1006',
          classes: ['align-left'],
          number: '1006',
          name: 'COVID RT-PCR, Qualitative NAAT',
          specimen: 'Anterior nasal swab; Nasopharyngeal swab; Oropharyngeal swab; Saliva',
          createdAt: '8/1/22',
        },
        {
          id: 'test-1007',
          classes: ['align-left'],
          number: '1007',
          name: 'SalivaDirect™ (SD)',
          specimen: 'Saliva',
          createdAt: '11/21/21',
        },
        {
          id: 'test-1008',
          classes: ['align-left'],
          number: '1008',
          name: 'renegadeXP (RXP)',
          specimen: 'Anterior nasal swab; Nasopharyngeal swab; Oropharyngeal swab,',
          createdAt: 'Going away, will not be sold',
        },
        {
          id: 'test-1009',
          classes: ['align-left'],
          number: '1009',
          name: 'Illumina® COVIDSeq™ Test',
          specimen: 'Anterior nasal swab; Nasopharyngeal swab; Oropharyngeal swab; Saliva',
          createdAt: '8/1/22',
        },
        {
          id: 'test-1010',
          classes: ['align-left'],
          number: '1010',
          name: 'Hepatitis C Virus (HCV) Quantitative Viral Load NAAT',
          specimen: 'Serum (SST) Plasma (EDTA) Plasma (PPT)',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1011',
          classes: ['align-left'],
          number: '1011',
          name: 'COVID + Flu A/B RT-PCR, EUA, Qualitative NAAT',
          specimen: 'Anterior nasal swab; Nasopharyngeal swab; Oropharyngeal swab; Saliva',
          createdAt: '8/19/22',
        },
        {
          id: 'test-1012',
          classes: ['align-left'],
          number: '1012',
          name: 'Monkeypox PCR, High-Sensitivity, Qualitative NAAT',
          specimen: 'Leison swab',
          createdAt: '8/1/22',
        },
        {
          id: 'test-1101',
          classes: ['align-left'],
          number: '1101',
          name: 'PrEP Panel for Men',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1102',
          classes: ['align-left'],
          number: '1102',
          name: 'PrEP Panel for Women',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1103',
          classes: ['align-left'],
          number: '1103',
          name: 'HIV 1, 2 Immunoassay',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1104',
          classes: ['align-left'],
          number: '1104',
          name: 'Hepatitis B Virus Immunoassay',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1105',
          classes: ['align-left'],
          number: '1105',
          name: 'Hepatitis C Virus Immunoassay',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1106',
          classes: ['align-left'],
          number: '1106',
          name: 'Syphilis (RPR)',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1107',
          classes: ['align-left'],
          number: '1107',
          name: 'Creatinine',
          specimen: 'n/a',
          createdAt: 'coming soon',
        },
        {
          id: 'test-1108',
          classes: ['align-left'],
          number: '1108',
          name: 'Trichomonas vaginalis (TV), Mycoplasma genitalium (MG)',
          specimen: 'n/a',
          createdAt: 'not available',
        },
        {
          id: 'test-1109',
          classes: ['align-left'],
          number: '1109',
          name: 'PrePsia',
          specimen: 'n/a',
          createdAt: 'coming soon',
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

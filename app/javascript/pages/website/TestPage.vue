<template>
  <div v-if="test" :id="`${test.id}-page`" class="page">
    <Hero :data="heroData" :parent="pageData" />
    <TestDetails :data="test" :parent="pageData" />
    <MailingListSignUp :data="mailingListData" :parent="pageData" />
  </div>
</template>

<script setup lang="ts">
  import {
    computed,
    // defineProps,
    // defineComponent,
    // onMounted,
    // reactive,
    // ref,
    // toRaw,
  } from 'vue'

  import { useRoute } from 'vue-router'
  import { storeToRefs } from 'pinia'
  import { showToast } from '@/utils/showToast'
  import { useTestsStore } from '@/stores/tests.store'

  import Hero from '@/partials/website/shared/HeroPartial.vue'
  import TestDetails from '@/partials/website/pages/test_details/TestDetailsPartial.vue'
  import MailingListSignUp from '@/partials/website/shared/MailingListSignUpPartial.vue'
  import { IPageData, IImage } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    // parent?: IPageData | null | undefined
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    loading: false,
    post: null,
    error: null,
    debug: false,
  })

  const route = useRoute()
  const testsStore = useTestsStore()
  const { test } = storeToRefs(testsStore)

  // ===========================================================================
  // Methods
  // ===========================================================================
  // const fetchData = () => {
  //   console.log(`Fetching Data for ${route.params.id}`)
  // }

  const pageData: IPageData = {
    id: 'test',
    title: 'Test',
  }

  // ===========================================================================
  // Hero Section Data
  // ===========================================================================
  const heroData = computed(() => {
    // console.log('test.value: ', toRaw(test.value))

    const pageData: IPageData = {
      id: `${test?.value?.id}-section-hero`,
      copyBlocks: [
        {
          classes: ['hero-block'],
          content: `
            <h5 class="prehead eggplant-110">
              Test Directory
            </h5>

            <h1 class="h1 navy-100">
              ${test?.value?.attributes?.name}
            </h1>

            <ul class="inline-list">
              <li class="p2">
                <strong>Test:</strong>
                <span>${test?.value?.attributes?.code}</span>
              </li>
              <li class="p2">
                <strong>CPT:</strong>
                <span>${test?.value?.attributes?.cptCodes?.join('; ')}</span>
              </li>
            </ul>
          `,
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

    if (test?.value?.attributes?.image) {
      const image: IImage = test?.value?.attributes?.image

      if (!image.id && test?.value?.id) {
        image.id = `${test?.value?.id}-section-hero-image`
      }

      pageData.images = [image]
    }

    return pageData
  })

  // ===========================================================================
  // Mailing List Sign Up Data
  // ===========================================================================
  const mailingListData = computed(() => {
    return {
      id: `${test?.value?.id}-section-mailing-list-sign-up`,
      copyBlocks: [
        {
          content: `
            <h3 class="h3 sky-blue-100">Keep up with the latest <span class="magenta-100">renegade.bio</span> news</h3>
          `,
        },
      ],
    }
  })

  // ===========================================================================
  // Methods
  // ===========================================================================
  const hydrate = () => {
    console.log(`Fetching Data for ${route?.params?.id}`)

    testsStore.show(route?.params?.id).catch((error) => {
      showToast(error, 'error')
    })
  }

  // ===========================================================================
  // Created
  // ===========================================================================
  hydrate()
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  :deep() {
    .section {
      &.hero {
        padding: 0;
        min-height: unset;

        .container {
          row-gap: 3rem;

          @include for-tablet-portrait-up {
            row-gap: 6rem;
          }

          .copy-block,
          > .image-container {
            z-index: 2;
          }

          .hero-block {
            flex: 0 1 100%;

            p {
              max-width: 79%;
            }

            .ml-container {
              width: 100%;

              h5.prehead {
                text-align: left;
              }

              h1.h1 {
                text-align: left;

                @include for-tablet-mid-up {
                  margin-bottom: 0;
                }
              }

              .inline-list {
                align-content: flex-start;
                align-items: flex-start;
                column-gap: 8rem;
                row-gap: 2rem;
                margin-top: 0;
                flex-direction: column;

                @include for-tablet-mid-up {
                  flex-direction: row;
                  justify-content: flex-start;
                }

                .p2 {
                  text-align: left;
                }
              }
            }
          }
        }

        .image-container {
          flex: 1 1 auto;

          @include for-desktop-narrow-up {
            margin-bottom: -19rem;
          }

          img {
            width: 100%;
          }
        }

        #shape-section-hero-header-background {
          top: -14rem;
          left: 62rem;
          max-height: calc(100% + 14rem);
          width: 198.3rem;
          background-position-x: 0rem;
          background-position-y: -79rem;
        }
      }
    }

    .section.test.show {
      background-color: $--color-theme-white;

      .container {
        // width: 100%;

        .copy-block {
          width: 100%;

          .ml-container {
            width: 100%;

            .sub-section {
              width: 100%;

              // .figure,
              // .image-container {
              //   opacity: 0.5 !important;
              //   width: 100%;
              // }

              figure {
                width: 100%;

                .image-container {
                  width: 100%;

                  img {
                    max-width: 100%;
                    width: auto;
                    height: fit-content;
                  }
                }
              }
            }
          }
        }
      }
    }

    // #newsroom-section-in-the-news {
    //   padding-top: 10rem;
    // }
  }
</style>

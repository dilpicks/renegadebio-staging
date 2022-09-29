<template #contactFormPartial>
  <section :id="data.id" class="section contact-form-partial">
    <div class="container">
      <div class="content-frame padded">
        <InsightlyFormContactUs v-bind="insightlyFormData" />
      </div>

      <!-- Contact Details -->
      <aside v-if="data?.copyBlocks" :class="['aside', 'content-frame']">
        <div
          v-for="(copyBlock, index) in data.copyBlocks"
          :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
          :key="index"
          :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
        >
          <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
        </div>
      </aside>
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import InsightlyFormContactUs from '@/partials/website/vendor/insightly/InsightlyFormContactUs.vue'
  import Image from '@/components/Image.vue'
  import Link from '@/components/Link.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null | undefined
    debug?: boolean
  }

  // ===========================================================================
  // File-Specific
  // ===========================================================================
  const insightlyFormData: IPageData = {
    id: 'insightly-form-contact-us',
    // debug: true,
    classes: ['test'],
  }

  withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // Frozen Constants
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .section.contact-form-partial {
    background-color: transparent;

    @include for-desktop-narrow-up {
      padding-top: 10rem;
    }

    .container {
      flex-direction: row;
      flex-wrap: wrap;
      column-gap: 12.6rem;
      row-gap: 3rem;

      padding: 2rem;

      @include for-desktop-narrow-up {
        padding: 6.2rem 2rem;
      }

      :deep() {
        .aside {
          flex: 1;

          @include for-desktop-narrow-up {
            flex: 0 1 40rem;
          }

          .padded-container {
            padding: 3rem;
            flex-wrap: wrap;
            row-gap: 2rem;

            .case-study-details-info-block {
              flex-direction: column;
              flex: 1 1 100%;
            }
          }

          .image-container {
            padding: 2.9rem;

            @include for-phone-up {
              padding: 3.9rem;
            }

            background-color: $--color-theme-navy-100;
            border-radius: 2rem 2rem 0 0;

            align-items: center;
            justify-content: center;

            img {
              width: 100%;
            }
          }
        }

        .content-container {
          flex: 1 1 auto;
          flex-wrap: wrap;

          row-gap: 3rem;

          @include for-desktop-narrow-up {
            flex: 1 1 0;
          }

          .copy-block {
            flex: 1 1 100%;

            .h3 {
              margin-bottom: 0.5rem;
            }
          }

          h6 {
            & + p,
            & + ul {
              margin-top: 0.5rem;
            }
          }
        }
      }
    }
  }
</style>

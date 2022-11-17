<template #manifestoPartial>
  <section :id="data.id" class="section manifesto">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null | undefined
    debug?: boolean
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

  .section.manifesto {
    .container {
      position: relative;

      row-gap: 6rem;

      @include for-tablet-landscape-up {
        row-gap: 1rem;
      }

      :deep() {
        > .copy-block {
          // flex: 0 1 50%;

          .ml-container {
            @include for-tablet-landscape-up {
              max-width: 50%;
            }
          }

          ul.unmarked-list {
            flex-direction: column;
            padding-left: 4rem;

            @include for-tablet-portrait-up {
              padding-left: 7rem;
            }

            @include for-tablet-mid-up {
              padding-left: 10rem;
            }
          }

          &:nth-of-type(odd) {
            align-content: flex-start;
          }

          &:nth-of-type(even) {
            align-content: flex-end;
          }
        }

        .content-frame {
          top: 22.5rem;
        }
      }
    }
  }
</style>

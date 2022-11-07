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

      <AccordionList v-if="data?.accordionList" :accordion-list="data.accordionList" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Props
  // ===========================================================================
  import AccordionList from '@/components/AccordionList.vue'
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
    background: linear-gradient(0deg, $--color-theme-white 0%, $--color-theme-light-blue-100 100%);
    min-height: 93rem;

    .container {
      // row-gap: 8rem;
      position: relative;

      :deep() {
        > .copy-block {
          // flex: 0 1 50%;

          .ml-container {
            max-width: 50%;
          }

          ul.unmarked-list {
            flex-direction: column;
            padding-left: 10rem;
          }

          &:nth-of-type(odd) {
            align-content: flex-start;
          }

          &:nth-of-type(even) {
            align-content: flex-end;
          }

          &:last-of-type {
            margin-top: 12.3rem;
            align-content: center;

            .ml-container {
              max-width: unset;
            }
          }
        }

        .content-frame {
          top: 22.5rem;
        }
      }
    }
  }
</style>

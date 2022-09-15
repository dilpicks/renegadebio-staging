<template #diagnosticsPartial>
  <section :id="data.id" class="section diagnostics">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>

      <Cards v-if="data?.cards" :cards="data.cards" :classes="['stacked']" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import Cards from '@/components/Cards.vue'
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

  .section.diagnostics {
    background-color: $--color-theme-white;
    gap: 5rem;

    @include for-desktop-mid-up {
      padding-top: 8rem;
    }

    &:deep() {
      .container {
        row-gap: 8.5rem;
        z-index: 2;
      }

      .cards {
        row-gap: 5rem;

        .card,
        .adjacent-image-card {
          flex: 1 0 0%;
          row-gap: 5rem;
          column-gap: 12rem;

          .image-container {
            @include for-desktop-narrow-to-mid-up {
              flex: 0 1 calc(60% - 9.6rem);
            }

            img {
              max-width: unset;
            }
          }
        }
      }
    }
  }
</style>

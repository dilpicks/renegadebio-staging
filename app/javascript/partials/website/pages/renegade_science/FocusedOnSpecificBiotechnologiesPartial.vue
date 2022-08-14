<template #focusedOnSpecificBiotechnologiesPartial>
  <section :id="data.id" class="section focused-on-specific-biotechnologies">
    <div class="container">
      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
        <!--
          `vue/no-v-html` linter disabled here as only approved users
          will submit content via `tinymce`
        -->
        <!-- eslint-disable-next-line vue/no-v-html -->
        <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
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

<style setup lang="scss">
  .section.focused-on-specific-biotechnologies {
    background-color: $--color-theme-light-blue-40;

    .container {
      row-gap: 8.5rem;
    }

    .card {
      row-gap: 1.3rem;
      padding-bottom: 5.3rem;
      padding-top: 5.3rem;

      .h2 {
        color: $--color-theme-navy-100;
        margin-bottom: 1rem;
      }

      .button {
        background-color: $--color-theme-sky-blue-100;
      }
    }
  }
</style>

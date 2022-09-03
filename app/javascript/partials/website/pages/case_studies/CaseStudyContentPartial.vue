<template #caseStudiesCollectionPartial>
  <section :id="data.id" class="section case-studies-collection">
    <div class="container">
      <!-- Case Study Details -->
      <div
        v-if="data?.caseStudyDetails"
        :id="data?.caseStudyDetails.id"
        :class="[
          'content-frame',
          ...(data?.caseStudyDetails?.classes ? data?.caseStudyDetails.classes : []),
        ]"
      >
        <Image v-if="data?.caseStudyDetails?.image" :image="data.caseStudyDetails.image" />

        <div v-if="data?.caseStudyDetails?.company" class="case-study-details-info-block">
          <h5 id="case-studies-company" class="p3-bold magenta-100">Company</h5>
          <p>
            {{ data?.caseStudyDetails?.company }}
          </p>
        </div>

        <div v-if="data?.caseStudyDetails?.headquarters" class="case-study-details-info-block">
          <h5 id="case-studies-headquarters" class="p3-bold magenta-100">Headquarters</h5>
          <p>
            {{ data?.caseStudyDetails?.headquarters }}
          </p>
        </div>

        <HtmlContent
          v-if="data?.caseStudyDetails?.content"
          :content="data?.caseStudyDetails.content"
        />

        <div v-if="data?.caseStudyDetails?.link" class="buttons-container">
          <Link :link="data?.caseStudyDetails.link" />
        </div>
      </div>
    </div>

    <!-- Case Study Content -->
    <div
      v-for="(copyBlock, index) in data.copyBlocks"
      :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
      :key="index"
      :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
    >
      <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import HtmlContent from '@/components/HtmlContent.vue'
  import Image from '@/components/Image.vue'
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
  .section.case-studies-collection {
    background-color: $--color-theme-white;
    min-height: 57.3rem;
    z-index: 20;

    .container {
    }
  }
</style>

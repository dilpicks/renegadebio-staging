<template #event>
  <div :id="data.id" :class="['event-container', ...data.classes]">
    <h5 v-if="data?.title" class="event-title">{{ data.title }}</h5>
    <div
      v-for="(copyBlock, index) in data.copyBlocks"
      :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
      :key="index"
      :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
    >
      <HtmlContent v-if="copyBlock?.content" :content="copyBlock.content" />
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  // import {
  //   // computed
  //   // defineComponent
  //   // onMounted,
  //   // ref
  // } from 'vue'

  import HtmlContent from '@/components/HtmlContent.vue'
  import { IEvent } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IEvent
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .events-container {
    flex-direction: column;
    column-gap: 2rem;
    row-gap: 8.6rem;

    max-width: 100%;

    @include for-phone-up {
      flex: 1 1 auto;
      flex-wrap: wrap;
    }

    &:deep() {
    }
  }
</style>

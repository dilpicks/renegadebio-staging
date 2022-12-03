<template #htmlContent>
  <!--
    `vue/no-v-html` linter disabled here as only approved users
    will submit content via `tinymce`
  -->
  <!-- eslint-disable-next-line vue/no-v-html -->
  <div :id="id" :class="['ml-container', ...classes]" v-html="content" />
</template>

<script setup lang="ts">
  import {
    // computed,
    // defineComponent,
    defineEmits,
    // defineProps,
    onMounted,
    // reactive,
    // ref,
    // toRaw,
  } from 'vue'

  // ===========================================================================
  // Props
  // ===========================================================================

  interface Props {
    content: string
    id?: string | undefined
    classes?: Array<string>
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    id: undefined,
    classes: () => [],
    debug: false,
  })

  const emit = defineEmits<{
    (event: 'html-content-mounted', elementId: string): void
  }>()

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    emit('html-content-mounted', props.id)
  })
</script>

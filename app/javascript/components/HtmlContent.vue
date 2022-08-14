<template #htmlContent>
  <!--
    `vue/no-v-html` linter disabled here as only approved users
    will submit content via `tinymce`
  -->
  <!-- eslint-disable-next-line vue/no-v-html -->
  <div :id="id" :class="['ml-container', ...classes]" v-html="content" />
</template>

<script setup lang="ts">
  import { defineProps } from 'vue'

  interface Props {
    content: string
    id?: string | undefined
    classes?: Array<string>
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    id: undefined,
    classes: () => [],
    debug: false,
  })
</script>

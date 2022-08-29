<template #accordion-item="{ accordion-item }">
  <div
    :id="`accordion-item-${accordionItem.id}`"
    ref="root"
    :class="['accordion-item', ...accordionItem.classes]"
  >
    <h3 :class="['h3-bold']">{{ accordionItem.title }}</h3>
    <!--
      `vue/no-v-html` linter disabled here as only approved users
      will submit content via `tinymce`
    -->
    <!-- eslint-disable-next-line vue/no-v-html -->
    <div class="accordion-item-content">
      <HtmlContent :content="accordionItem.content" />
    </div>
  </div>
</template>

<script setup lang="ts">
  import {
    defineProps,
    // defineComponent
    onMounted,
    ref,
  } from 'vue'

  import HtmlContent from '@/components/HtmlContent.vue'
  import { IAccordionItem } from '@/types/general'

  interface Props {
    accordionItem: IAccordionItem
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const props = defineProps<Props>()
  const root = ref(null)

  defineExpose({
    root,
  })

  onMounted(() => {
    // the DOM element will be assigned to the ref after initial render
    // console.log(root.value) // this is your $el
  })
</script>

<style setup lang="scss">
  .accordion-item {
    align-items: center;
    align-content: center;
    flex: 1 1 100%;
    flex-wrap: wrap;
    justify-content: flex-start;
    row-gap: 2.3rem;

    &:only-of-type {
      h3 {
        cursor: auto;
      }
    }

    // &:first-of-type {
    //   opacity: 1;
    // }

    .accordion-item-content {
      flex: 0 1 50%;
      padding: 0 0 0 4.1rem;
      // position: relative;

      .ml-container {
        flex-direction: row;
        justify-content: space-between;
      }

      .accordion-description {
        flex: 1 1 50%;

        opacity: 0;

        max-height: 0;
        overflow: hidden;
        transition: all 0.5s ease-out;
      }

      .content-frame {
        flex: 0 1 50%;
        // display: none;

        pointer-events: none;

        position: absolute;
        right: 0;
        top: 0;
        max-width: 53.5rem;

        opacity: 0;

        transition: all 0.5s ease-out;

        ul.icon-list {
          flex-wrap: wrap;
          row-gap: 3rem;

          li {
            flex: 1 1 100%;
          }
        }
      }
    }

    p {
      color: $--color-theme-navy-100;
    }

    h3 {
      align-items: center;
      display: flex;
      flex: 1 1 100%;

      min-height: 8.3rem;

      border-color: $--color-theme-neutral-200;
      border-style: solid;
      border-width: 0 0 0 1.4rem;
      color: $--color-theme-navy-100;
      cursor: pointer;
      padding: 0 0 0 2.7rem;

      transition: all 0.5s ease-out;
    }

    h5 {
    }

    &.magenta-100 {
      h3 {
        &:hover {
          border-color: $--color-theme-magenta-100;
        }
      }

      &.active {
        h3 {
          border-color: $--color-theme-magenta-100;
        }
      }
    }

    &.sky-blue-100 {
      h3 {
        &:hover {
          border-color: $--color-theme-sky-blue-100;
        }
      }

      &.active {
        h3 {
          border-color: $--color-theme-sky-blue-100;
        }
      }
    }

    &.eggplant-100 {
      h3 {
        &:hover {
          border-color: $--color-theme-eggplant-100;
        }
      }

      &.active {
        h3 {
          border-color: $--color-theme-eggplant-100;
        }
      }
    }

    &.active {
      .accordion-item-content {
        .accordion-description {
          max-height: 50rem;
          opacity: 1;
        }

        .content-frame {
          display: flex;

          opacity: 1;
        }
      }
    }
  }
</style>

<template #accordionList>
  <div :id="accordionList.id" ref="accordion-list-list" class="accordion">
    <div class="accordion-items-wrapper">
      <div ref="slider" class="accordion-items">
        <AccordionItem
          v-for="accordionItem in accordionList.accordionItems"
          :ref="(el) => (elementRefs[`accordion-item-${accordionItem.id}`] = el)"
          :key="accordionItem.id"
          :accordion-item="accordionItem"
          @click.prevent="loadItem(accordionItem.id)"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  import {
    // computed,
    // defineProps,
    // defineComponent,
    onMounted,
    ref,
  } from 'vue'

  // import Vue from 'vue'
  // import { gsap } from 'gsap'

  import AccordionItem from '@/components/AccordionItem.vue'
  import { IAccordionList, IElementRefs } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    accordionList: IAccordionList
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    transitionDuration: 1,
    initialExpandedItemId: null,
    debug: false,
  })

  // ===========================================================================
  // Data
  // ===========================================================================
  const currentItemId = ref<string>(props.accordionList.accordionItems[0].id)
  const elementRefs = ref<IElementRefs>({})

  // ===========================================================================
  // Computed
  // ===========================================================================
  // const ponyImageUrl = computed(() => `/pony-${props.accordionList.ponyModel.color}${props.accordionList.isRunning ? '-running' : ''}.gif`);

  // ===========================================================================
  // Methods
  // ===========================================================================
  // const getItemIndex = () => {
  //   return props.accordionList.accordionItems.findIndex(
  //     (itemData) => itemData.id === currentItemId.value,
  //   )
  // }

  const loadItem = (itemId: string) => {
    if (props.accordionList.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Accordion.vue - loadItem - itemId: ', itemId)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    if (props.accordionList.accordionItems.length > 1) {
      // const previousItemIndex = getItemIndex()
      const previousItem: HTMLDivElement | null = elementRefs.value[
        `accordion-item-${currentItemId.value}`
      ]?.root as HTMLDivElement | null

      currentItemId.value = itemId

      // const nextItemIndex = getItemIndex()
      const nextItem: HTMLDivElement | null = elementRefs.value[
        `accordion-item-${currentItemId.value}`
      ]?.root as HTMLDivElement | null

      if (previousItem && nextItem) {
        previousItem.classList.remove('active')

        setTimeout(() => {
          nextItem.classList.add('active')
        }, 250)
      }

      // if (previousItem && nextItem) {
      //   // eslint-disable-next-line prettier/prettier
      //   const transitionToX = 0 - nextItem.offsetWidth * nextItemIndex

      //   if (props.accordionList.debug) {
      //     console.log('')
      //     console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      //     console.log('Accordion.vue - nextItem: ', nextItem)
      //     console.log('Accordion.vue - nextItem.offsetWidth: ', nextItem.offsetWidth)
      //     console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      //     console.log('')
      //   }

      //   if (slider.value) {
      //     gsap.to(slider.value, {
      //       x: transitionToX,
      //     })
      //   }

      //   if (previousItem) {
      //     gsap.to(previousItem, {
      //       opacity: 0,
      //     })
      //   }

      //   if (nextItem) {
      //     gsap.to(nextItem, {
      //       opacity: 1,
      //     })
      //   }
      // }
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    // if (props.accordionList.initialExpandedItemId) {
    //   currentItemId = props.accordionList.initialExpandedItemId

    //   loadItem(currentItemId)
    // }

    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('Accordion.vue - onMounted - currentItemId: ', currentItemId)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    loadItem(currentItemId.value)
  })
</script>

<style setup lang="scss">
  .accordion {
    align-items: center;
    justify-content: space-between;
    // position: relative;

    .accordion-items-wrapper {
      flex: 0 1 auto;
      align-items: center;
      align-content: center;
      justify-content: flex-start;
      // max-width: 106.8rem;
      // overflow: hidden;
    }

    .accordion-items {
      flex-wrap: wrap;
      row-gap: 5.6rem;
    }
  }
</style>

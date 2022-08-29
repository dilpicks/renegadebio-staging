<template #tab-list>
  <div ref="tab-list" :class="[{ collapsed: isCollapsed }, 'tab-list']">
    <div class="tabs-header tab-image-container" />
    <div :class="['tabs-container']">
      <div class="tab-nav">
        <div
          v-for="(tab, index) in props.tabList"
          :ref="(el) => (elementRefs[`tab-nav-item-${tab.id}`] = el)"
          :key="index"
          :class="[
            'tab',
            { active: currentItemId == tab.id },
            ...(tab?.classes ? tab.classes : []),
          ]"
        >
          <div v-if="tab.headline" class="tab-link">
            <a class="h2 button" @click.prevent="loadItem(tab.id)">
              {{ tab.headline }}
            </a>
          </div>

          <div class="tab-item">
            <div class="tab-image-container" />
            <div class="copy-block">
              <h5 v-if="tab.prehead" class="p2-bold prehead">{{ tab.prehead }}</h5>
              <!--
                `vue/no-v-html` linter disabled here as only approved users
                will submit content via `tinymce`
              -->
              <!-- eslint-disable-next-line vue/no-v-html -->
              <div class="tab-content" v-html="tab.content" />
            </div>
            <div v-if="tab.link" class="buttons-container">
              <Link :link="tab.link" />
            </div>
          </div>
        </div>
      </div>

      <div class="scroll-container">
        <div ref="slider" class="scroll-items-container">
          <div
            v-for="(tab, index) in props.tabList"
            :ref="(el) => (elementRefs[`scroll-item-${tab.id}`] = el)"
            :key="index"
            :class="[{ active: index === 0 }, 'tab-item', ...(tab?.classes ? tab.classes : [])]"
          >
            <div
              v-if="tab.image"
              :class="['tab-image-container']"
              :style="`background-image: url(${tab.image})`"
            />
            <div class="tab-content-container">
              <div class="copy-block">
                <h5 v-if="tab.prehead" class="p2-bold prehead">{{ tab.prehead }}</h5>
                <!--
                  `vue/no-v-html` linter disabled here as only approved users
                  will submit content via `tinymce`
                -->
                <!-- eslint-disable-next-line vue/no-v-html -->
                <div class="tab-content" v-html="tab.content" />
              </div>
              <div v-if="tab.link" class="buttons-container">
                <Link :link="tab.link" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Imports
  // ===========================================================================
  import { computed, defineProps, onMounted, onUnmounted, ref } from 'vue'

  import { gsap } from 'gsap'

  import Link from '@/components/Link.vue'
  import { IElementRefs, ITab } from '@/types/general'

  // ===========================================================================
  // Frozen Constants
  // ===========================================================================
  const VIEWPORT_WIDTH_COLLAPSE = 1264

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    id: string
    tabList: Array<ITab>
    autoScrollEnabled?: boolean
    autoScrollDelay?: number
    transitionDuration?: number
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    autoScrollEnabled: true,
    autoScrollDelay: 3,
    transitionDuration: 1,
    debug: false,
  })

  // ===========================================================================
  // Data
  // ===========================================================================
  const slider = ref<HTMLElement | null>(null)
  const viewportWidth = ref<number>(window.innerWidth)
  const currentItemId = ref<string>(props.tabList[0].id)
  const elementRefs = ref<IElementRefs>({})

  // ===========================================================================
  // Computed
  // ===========================================================================
  const isCollapsed = computed(() => viewportWidth.value < VIEWPORT_WIDTH_COLLAPSE)

  // ===========================================================================
  // Methods
  // ===========================================================================
  const onViewportChange = () => (viewportWidth.value = window.innerWidth)

  const getItemIndex = () => {
    return props.tabList.findIndex((itemData) => itemData.id === currentItemId.value)
  }

  const loadItem = (itemId: string) => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('TabCollection.vue - loadItem - itemId: ', itemId)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    if (props.tabList.length > 1) {
      const previousItem = elementRefs.value[`scroll-item-${currentItemId.value}`]

      currentItemId.value = itemId

      const nextItemIndex = getItemIndex()
      const nextItem = elementRefs.value[`scroll-item-${currentItemId.value}`]

      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('TabCollection.vue - loadItem - previousItem: ', previousItem)
        console.log('--------------------------------------')
        console.log('TabCollection.vue - loadItem - nextItem: ', nextItem)
        console.log('--------------------------------------')
        console.log('TabCollection.vue - loadItem - elementRefs.value: ', elementRefs.value)
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }

      // eslint-disable-next-line prettier/prettier
      const transitionToY = 0 - nextItem?.offsetHeight * nextItemIndex

      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('TabCollection.vue - loadItem - previousItem: ', previousItem)
        console.log('--------------------------------------')
        console.log('TabCollection.vue - loadItem - nextItem: ', nextItem)
        console.log('--------------------------------------')
        console.log('TabCollection.vue - loadItem - transitionToY: ', transitionToY)
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }

      // if (slider.value) {
      //   gsap.to(slider.value, {
      //     y: transitionToY,
      //   })
      // }

      if (previousItem) {
        gsap.to(previousItem, {
          opacity: 0,
          onComplete: () => {
            // gsap.set(previousItem, { display: 'none' })
            previousItem.classList.remove('active')
          },
        })
      }

      if (nextItem) {
        nextItem.classList.add('active')
        gsap.to(nextItem, {
          opacity: 1,
        })
      }
    }
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log(`TabCollection.vue - onMounted - props.id: `, props.id)
      console.log(`TabCollection.vue - onMounted - currentItemId.value:  `, currentItemId.value)
      // eslint-disable-next-line prettier/prettier
      console.log(
        `TabCollection.vue - onMounted - currentItemId.value == 'tab-infectious-disease-diagnostics': `,
        currentItemId.value == 'tab-infectious-disease-diagnostics',
      )
      console.log(`TabCollection.vue - onMounted - slider: `, slider)
      console.log(`TabCollection.vue - onMounted - slider.value: `, slider.value)
      console.log(`TabCollection.vue - onMounted - elementRefs.value:  `, elementRefs.value)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }

    window.addEventListener('resize', onViewportChange)

    // Then setup the interval to refresh every `props.autoScrollDelay` n seconds (default is 3 seconds)
    // autoScoll()
  })

  onUnmounted(() => {
    window.removeEventListener('resize', onViewportChange)
  })
</script>

<style setup lang="scss">
  .tab-list {
    align-items: flex-start;
    justify-content: flex-start;

    margin-top: -3.4rem;

    width: 100%;
    max-width: 126.4rem;

    // height: 100%;
    max-height: 96.2rem;

    .tabs-container {
      align-items: stretch;
      flex: 1 1 100%;
      justify-content: flex-start;

      height: 100%;
      overflow: hidden;

      background-color: $--color-theme-white;
      border-radius: 2rem;
      // box-shadow: 1rem 1rem 2rem rgba(#605f5f, 0.08);
      box-shadow: $--box-shadow;
    }

    .tab-item {
      flex-direction: column;

      display: none;

      &.active {
        display: flex;
      }
    }

    .tab {
      flex-direction: column;

      .tab-item {
      }
    }

    .tab-link {
      flex-direction: column;

      a {
        display: flex;

        padding-left: 1.9rem;
        max-width: 26rem;

        cursor: pointer;

        color: $--color-theme-navy-100;
        border-color: #ececec;
        border-style: solid;
        border-width: 0 0 0 1.4rem;

        &:hover,
        &:active {
          border-color: $--color-theme-magenta-100;
          color: $--color-theme-magenta-100;
        }
      }
    }

    .tab {
      &.active {
        .tab-link {
          a {
            border-color: $--color-theme-magenta-100;
            color: $--color-theme-magenta-100;
          }
        }
      }
    }

    .tab-nav {
      flex: 0 0 auto;
      flex-direction: column;
      row-gap: 7.1rem;

      max-width: 43.4rem;
      padding: 8.8rem 5.6rem 8.8rem 8.8rem;

      overflow: scroll;
    }

    .scroll-container {
      flex: 1 1 auto;
      // flex-direction: column;

      border-color: #ececec;
      border-style: solid;
      border-width: 0 0 0 0.2rem;

      height: 96.2rem;
      overflow: hidden;

      .scroll-items-container {
        align-items: flex-start;
        flex-wrap: wrap;

        position: relative;

        .tab-item {
          align-content: stretch;
          align-items: flex-start;
          flex: 1 1 100%;
          flex-direction: row;
          flex-wrap: wrap;

          position: absolute;

          background-color: $--color-theme-white;
          opacity: 0;

          height: 96.2rem;

          &:first-of-type {
            opacity: 1;
          }

          .tab-image-container {
            flex: 1 1 100%;

            width: 100%;
            height: 60.2rem;

            background-size: cover;
          }

          .tab-content-container {
            flex-direction: column;
            row-gap: 3.5rem;

            padding: 6.4rem;

            .copy-block {
              flex: 1 1 100%;
              max-width: unset;
            }

            .buttons-container {
              flex: 1 1 100%;
            }
          }
        }
      }
    }
  }
</style>

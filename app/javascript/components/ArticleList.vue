<template #articleList>
  <div
    v-if="articleList?.articleItems"
    :class="['article-list', ...(articleList?.classes ? articleList.classes : [])]"
  >
    <ArticleItem
      v-for="(articleItem, index) in articleList.articleItems"
      v-show="index < 4"
      :key="index"
      :article-item="articleItem"
    />

    <ArticleItem v-if="articleList?.articleItems?.length >= 4" :article-item="moreArticles" />
  </div>
</template>

<script setup lang="ts">
  // import {
  //   // computed,
  //   // defineProps,
  //   // defineComponent,
  //   // onMounted,
  //   // ref,
  // } from 'vue'

  import ArticleItem from '@/components/ArticleItem.vue'
  import { IArticleList } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    articleList: IArticleList
    debug?: boolean
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const props = withDefaults(defineProps<Props>(), {
    debug: true,
  })

  // ===========================================================================
  // Data
  // ===========================================================================

  // ===========================================================================
  // Computed
  // ===========================================================================
  const moreArticles = {
    id: 'more-articles',
    classes: [],
    source: 'VIEW MORE',
  }

  // ===========================================================================
  // Methods
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
</script>

<style setup scoped lang="scss">
  @import '@/assets/css/breakpoints';

  .article-list {
    align-items: flex-start;
    align-content: flex-start;
    justify-content: flex-start;
    flex: 1 1 100%;
    flex-wrap: wrap;
    row-gap: 0rem;

    @include for-tablet-mid-up {
      flex: 1 1 0;
    }
  }

  :deep() {
    .article-item {
      &:only-of-type,
      &:last-of-type {
        border-color: $--color-border;
        border-style: solid;
        border-width: 0 0 0px 0;
      }
    }
  }
</style>

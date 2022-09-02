<template #testsPartial>
  <section :id="data.id" class="section tests">
    <div class="container">
      <Cards v-if="data?.cards" :cards="data.cards" />

      <div :id="data?.testList.id">
        <table v-if="data?.testList?.testItems">
          <thead>
            <tr>
              <th class="h3 sky-blue-100">Number</th>
              <th class="h3 sky-blue-100">Name</th>
              <th class="h3 sky-blue-100">Specimen</th>
              <th class="h3 sky-blue-100">New/Updated</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(testItem, index) in data.testList.testItems" :key="index">
              <td>{{ testItem.number }}</td>
              <td>{{ testItem.name }}</td>
              <td>{{ testItem.specimen }}</td>
              <td>{{ updatedOrCreatedAt(testItem) }}</td>
              <td>
                <a href="#">
                  <Image :image="{ ...arrowImage, id: `${arrowImage}-${index}` }" />
                </a>
              </td>
            </tr>
          </tbody>
        </table>

        <HtmlContent v-if="!data?.testList?.testItems" :content="noAvailableTestsContent" />
      </div>

      <div
        v-for="(copyBlock, index) in data.copyBlocks"
        :id="copyBlock?.id ? copyBlock.id : `copy-block-${index}`"
        :key="index"
        :class="['copy-block', ...(copyBlock?.classes ? copyBlock.classes : [])]"
      >
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
  import Image from '@/components/Image.vue'
  import { IPageData, ITestItem } from '@/types/general'

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
  const updatedOrCreatedAt = (testItem: ITestItem) => {
    return testItem.updatedAt ? testItem.updatedAt : testItem.createdAt
  }

  const arrowImage = {
    id: 'test-link-arrow',
    src: 'https://res.cloudinary.com/renegade-bio/image/upload/icons/icon-arrow-right.svg',
    title: 'test link',
    alt: 'test link logo',
    width: 24,
    height: 24,
  }

  const noAvailableTestsContent = `
    <h2 class="h2">No Tests Are Available At This Time.</h2>
  `
</script>

<style setup lang="scss">
  .section.tests {
    background-color: $--color-theme-white;
    padding-top: 10rem;

    .container {
      row-gap: 8.5rem;
      z-index: 2;
    }

    table {
      width: 100%;
    }

    thead {
      th {
        text-align: left;
      }
    }

    tbody {
      tr {
        border-color: $--color-border;
        border-style: solid;
        border-width: 0 0 0.2rem 0;

        td {
          padding: 3rem 0 3.5rem 0;
          text-align: left;
          text-decoration: underline;

          &:first-of-type {
            padding-left: 0;
          }
        }
      }
    }
  }
</style>

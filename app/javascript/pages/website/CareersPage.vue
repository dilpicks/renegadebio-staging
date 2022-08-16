<template>
  <div class="page">
    <section>
      <div class="container">
        <h2 class="text-center">You are visiting the {{ pageName }} page!</h2>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
  // import { IPageData } from '@/types/general'

  // const parent: IPageData = {
  //   id: 'how-we-work',
  //   title: 'How We Work',
  // }

  // const section: IPageData = {
  //   id: 'who-we-are',
  //   title: 'Who We Are',
  // }

  const pageName = 'Careers'
</script>

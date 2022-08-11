<template>
  <section id="case-studies">
    <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  const headline = 'Case Studies'
</script>

<style setup lang="scss">
  #case-studies {
    background-color: $--color-theme-white;
    min-height: 57.3rem;

    .h1 {
      display: flex;
      color: $--color-theme-navy-100;
    }
  }
</style>

<template>
  <section id="diagnostic-solutions">
    <div class="container">
      <div class="copy-block">
        <h2 class="h1">{{ headline }}</h2>
        <p class="p2">
          {{ headerCopy }}
        </p>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
  const headline = 'Diagnostic Solutions Across Disease Spaces'
  const headerCopy = `
    We develop diagnostics across multiple disease spaces.
    Currently, renegade.bio is focused on infectious diseases,
    reproductive health, and cardiovascular conditions.
  `
</script>

<style setup lang="scss">
  #diagnostic-solutions {
    background-color: $--color-theme-light-blue-100;
    min-height: 57.3rem;

    .h1 {
      display: flex;
      color: $--color-theme-sky-blue-100;
    }
  }
</style>

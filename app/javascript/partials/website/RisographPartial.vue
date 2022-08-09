<template>
  <div class="resograph-container">
    <img
      src="https://res.cloudinary.com/renegade-bio/image/upload/q_auto,w_280,h_664/dpr_2.0/risographs/yellow-kid-toss.png"
      title=""
      alt=""
      width="280"
      height="644"
    />
    <img
      src="https://res.cloudinary.com/renegade-bio/image/upload/q_auto,w_734,h_666/dpr_2.0/risographs/blue-man.png"
      title=""
      alt=""
      width="734"
      height="666"
    />
  </div>
</template>

<script setup lang="ts"></script>

<style setup lang="scss">
  .resograph-container {
    align-items: flex-end;

    position: absolute;
    z-index: 10;

    right: 0;
    bottom: 0;

    mix-blend-mode: multiply;

    min-width: 62.3rem;
    height: 66.6rem;

    img {
      position: absolute;

      mix-blend-mode: multiply;
    }
  }
</style>

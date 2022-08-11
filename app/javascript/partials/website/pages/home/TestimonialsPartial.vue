<template>
  <section id="testimonials">
    <div class="container">
      <Gallery :id="'gallery-testimonials'" :gallery-items="galleryItems" />
    </div>
  </section>
</template>

<script setup lang="ts">
  import Gallery from '@/components/Gallery.vue'
  import { IGalleryItem } from '@/types/general'

  const galleryItems: Array<IGalleryItem> = [
    {
      id: 'testimonial-lon-hua',
      attibution: 'Lon Hua, Ubiquitome Application Scientist',
      content: `
        <p class="p1">
          <q>
            renegade.bio executed the study with precision and expertise, while keeping us
            up-to-date with their latest activities and completed all that was required in a
            timely manner. The team at renegade.bio provided us with invaluable feedback around
            the current workflow, protocol programming, user interface, and experience of the
            Liberty16.
          </q>
        </p>
      `,
      image: {
        id: 'profile-image-lon-hua',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/testimonial-image',
        width: 466,
        height: 466,
      },
    },

    {
      id: 'testimonial-gabriela-gutierrez',
      attibution: 'Gabriela Gutierrez, CEO Microgenesis',
      content: `
        <p class="p1">
          <q>
            I connected with Craig through IndieBio and after 6 months of collaboration I can tell not
            only how hard and efficient they work with the higher standards but also the ability to
            cover the timeline for verification and validation and new potential scientific cooperation.
          </q>
        </p>
      `,
      image: {
        id: 'profile-image-gabriela-gutierrez',
        src: 'https://res.cloudinary.com/renegade-bio/image/upload/fpo/testimonial-image',
        width: 466,
        height: 466,
      },
    },
  ]
</script>

<style setup lang="scss">
  #testimonials {
    background-color: $--color-theme-navy-100;
    min-height: 57.3rem;

    h1 {
      display: flex;
      flex-direction: column;
      flex: 1 1 100%;

      margin-top: 1rem;

      color: $--color-theme-eggplant-100;

      span {
        text-transform: uppercase;

        // At Out Core
        &:nth-of-type(3n) {
          color: $--color-theme-lemon-yellow-100;
          margin: -3.9rem 0 0 0;
        }

        // We Are
        &:nth-of-type(3n + 1) {
          color: $--color-theme-magenta-100;
        }

        // renegade
        &:nth-of-type(3n + 2) {
          color: $--color-theme-sky-blue-100;
          margin: -5.7rem 0 0 9.2rem;
          text-transform: lowercase;
        }
      }
    }
  }
</style>

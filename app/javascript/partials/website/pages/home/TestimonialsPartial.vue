<template #testimonials>
  <section :id="data.id" class="section testimonials">
    <div class="container">
      <Gallery
        v-if="data?.galleryItems"
        :id="'gallery-testimonials'"
        :gallery-items="data.galleryItems"
        :auto-scroll-delay="15"
      />
    </div>
  </section>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  // import Cards from '@/components/Cards.vue'
  // import HtmlContent from '@/components/HtmlContent.vue'
  // import ImageList from '@/components/ImageList.vue'
  // import Risographs from '@/components/Risographs.vue'
  // import Shape from '@/components/Shape.vue'
  import Gallery from '@/components/Gallery.vue'
  import { IPageData } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    data: IPageData
    parent?: IPageData | null
    debug?: boolean
  }

  withDefaults(defineProps<Props>(), {
    parent: null,
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // const galleryItems: Array<IGalleryItem> = [
  //   {
  //     id: 'testimonial-lon-hua',
  //     attibution: 'Lon Hua, Ubiquitome Application Scientist',
  //     content: `
  //       <p class="p1">
  //         <q>
  //           renegade.bio executed the study with precision and expertise, while keeping us
  //           up-to-date with their latest activities and completed all that was required in a
  //           timely manner. The team at renegade.bio provided us with invaluable feedback around
  //           the current workflow, protocol programming, user interface, and experience of the
  //           Liberty16.
  //         </q>
  //       </p>
  //     `,
  //     image: {
  //       id: 'profile-image-lon-hua',
  //       src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Ubiquitome-logo.svg',
  //       title: 'Ubiquitome',
  //       alt: 'Ubiquitome logo',
  //       width: 120,
  //       height: 94,
  //     },
  //   },

  //   {
  //     id: 'testimonial-gabriela-gutierrez',
  //     attibution: 'Gabriela Gutierrez, CEO Microgenesis',
  //     content: `
  //       <p class="p1">
  //         <q>
  //           I connected with Craig through IndieBio and after 6 months of collaboration I can tell not
  //           only how hard and efficient they work with the higher standards but also the ability to
  //           cover the timeline for verification and validation and new potential scientific cooperation.
  //         </q>
  //       </p>
  //     `,
  //     image: {
  //       id: 'profile-image-gabriela-gutierrez',
  //       src: 'https://res.cloudinary.com/renegade-bio/image/upload/logos/Microgenesis-logo.svg',
  //       title: 'Microgenesis',
  //       alt: 'Microgenesis logo',
  //       width: 200,
  //       height: 41,
  //     },
  //   },
  // ]
</script>

<style setup scoped lang="scss">
  .section.testimonials {
    background-color: $--color-theme-background-secondary-dark;
    min-height: 57.3rem;
  }
</style>

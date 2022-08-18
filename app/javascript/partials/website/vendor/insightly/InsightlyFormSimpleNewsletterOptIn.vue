<!-- Note the following changes from the base `insightly_form_simple_newsletter_opt_in.html` code snippet provided by Insightly -->
<!-- 1. The entire snippet is wrapped in the `<div class="form-container insightly-form-container">` element -->
<!-- 2. Added the `insightly-form` & `insightly-inline-form` classes to the `<form>` -->
<!-- 3. Wrapped each Label/Input pair with `<div class="field insightly-field">` element -->
<!-- 4. Added `placeholder` attribute to inputs where applicable -->
<!-- 5. Removed the `: ` from `<label>` text – e.g.: `<label for="insightly_email">email: </label>` becomes: <label for="insightly_email">email</label>  -->
<!-- 6. Replaced in-line `style="position: absolute; left: -9999px; top: -9999px;"` for off-screen/hidden fields with the `insightly-off-screen` class -->
<!-- 7. Wrapped the `<input type="submit" value="Submit" />` with the `<div class="button-container actions"> element -->
<!-- 8. Additional global styling for Insightly forms can be found in `/assets/css/vendor/insightly.scss` -->

<template #insightlyFormSimpleNewsletterOptIn>
  <div
    :id="props.id"
    :class="[
      'form-container',
      'insightly-form-container',
      ...(props?.classes ? props.classes : []),
    ]"
  >
    <form
      class="insightly-form insightly-inline-form"
      name="insightly_form"
      data-form-id="9160"
      action="https://chloe.insightly.services/Forms/MTA3Mzg3My05MTYwLTIwMTA2ODQ%3d"
      method="post"
    >
      <div class="field insightly-field">
        <label for="insightly_email">email</label>
        <input
          id="insightly_email"
          name="email"
          type="text"
          placeholder="email@example.com"
          required
        />
      </div>

      <div class="field insightly-field insightly-off-screen">
        <label for="insightly_additional_field">Comments</label>
        <input id="insightly_additional_field" type="text" name="insightly_additional_field" />
      </div>

      <div class="button-container actions">
        <input type="submit" value="Submit" />
      </div>
    </form>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    // defineProps,
    // defineComponent
    onMounted,
    // ref
  } from 'vue'
  // import { CommonProps } from '@/types/general'

  // ===========================================================================
  // Props
  // ===========================================================================
  interface Props {
    id: string
    classes?: Array<string>
    debug?: boolean
  }

  const props = withDefaults(defineProps<Props>(), {
    classes: () => [],
    debug: false,
  })

  // ===========================================================================
  // "Frozen" Constants
  // ===========================================================================

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    if (props.debug) {
      console.log('')
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('InsightlyFormSimpleNewsletterOptIn.vue - props: ', props)
      console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
      console.log('')
    }
  })
</script>

<style setup lang="scss" scoped>
  // .insightly-form-container {}
</style>

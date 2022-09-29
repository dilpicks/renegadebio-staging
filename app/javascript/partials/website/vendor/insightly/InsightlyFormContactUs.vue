<!-- Note the following changes from the base `insightly_form_simple_newsletter_opt_in.html` code snippet provided by Insightly -->
<!-- 1. The entire snippet is wrapped in the `<div class="form-container insightly-form-container">` element -->
<!-- 2. Added the `insightly-form` classes to the `<form>` -->
<!-- 3. Wrapped each Label/Input pair with `<div class="field insightly-field">` element -->
<!-- 4. Added `placeholder` attribute to inputs where applicable -->
<!-- 5. Removed the `: ` from `<label>` text – e.g.: `<label for="insightly_email">email: </label>` becomes: <label for="insightly_email">email</label>  -->
<!-- 6. Replaced in-line `style="position: absolute; left: -9999px; top: -9999px;"` for off-screen/hidden fields with the `insightly-off-screen` class -->
<!-- 7. Wrapped the `<input type="submit" value="Submit" />` with the `<div class="button-container actions"> element -->
<!-- 8. Additional global styling for Insightly forms can be found in `/assets/css/vendor/insightly.scss` -->

<template #insightlyFormContactUs>
  <div
    :id="props.id"
    :class="[
      'form-container',
      'insightly-form-container',
      ...(props?.classes ? props.classes : []),
    ]"
  >
    <h3 class="h3 navy-100">Tell us about yourself and what you're looking for.</h3>

    <form
      v-if="!showMessage"
      ref="insightlyForm"
      class="form insightly-form"
      name="insightly_web_to_lead"
      data-form-id="kIV7iQp0NxKWDHttwmR4eg=="
      action="https://crm.na1.insightly.com/WebToLead/Create"
      method="post"
      @submit.prevent="formSubmitHandler"
    >
      <!-- Hidden -->
      <input type="hidden" name="formId" value="kIV7iQp0NxKWDHttwmR4eg==" />
      <input id="insightly_ResponsibleUser" type="hidden" name="ResponsibleUser" value="1879762" />
      <input id="insightly_LeadSource" type="hidden" name="LeadSource" value="3198396" />

      <!-- CRO Services -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="insightly_CRO_Services_1__c">CRO Services</label> -->
        <select
          id="insightly_CRO_Services_1__c"
          name="CRO_Services_1__c"
          required
          @input="resetMessages"
        >
          <option value="" disabled selected>CRO Services</option>
          <option value="Small RNA &amp; miRNA">Small RNA &amp; miRNA</option>
          <option value="Molecular diagnostics">Molecular diagnostics</option>
          <option value="PCR Multiplexing (renegadeXP&#174;)">
            PCR Multiplexing (renegadeXP&#174;)
          </option>
          <option value="Biochemistry">Biochemistry</option>
          <option value="Metabolomics">Metabolomics</option>
          <option value="Microbiology &amp; microbiome">Microbiology &amp; microbiome</option>
          <option value="Immunology &amp; immunoassays">Immunology &amp; immunoassays</option>
          <option value="Proteomics">Proteomics</option>
          <option value="Transcriptomics">Transcriptomics</option>
          <option value="Sequencing">Sequencing</option>
          <option value="Genomics">Genomics</option>
          <option value="Therapeutic Validation">Therapeutic Validation</option>
        </select>

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Organization -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_organization">Organization</label>
        <input
          id="insightly_organization"
          name="OrganizationName"
          type="text"
          placeholder="Organization"
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Title -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_title">Title</label>
        <input
          id="insightly_title"
          name="Title"
          type="text"
          placeholder="Title"
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- First Name -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_firstName">First Name</label>
        <input
          id="insightly_firstName"
          name="FirstName"
          type="text"
          placeholder="First Name"
          required
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Last Name -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_lastName">Last Name</label>
        <input
          id="insightly_lastName"
          name="LastName"
          type="text"
          placeholder="Last Name"
          required
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Email -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_email">email</label>
        <input
          id="insightly_email"
          name="email"
          type="email"
          placeholder="email@example.com"
          required
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Phone -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <label for="insightly_phone">Phone</label>
        <input
          id="insightly_phone"
          name="phone"
          type="tel"
          placeholder="email@example.com"
          @input="resetMessages"
        />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Message -->
      <div class="field insightly-field">
        <label for="insightly_topic__c">Message</label>
        <textarea id="insightly_topic__c" type="text" name="topic__c"></textarea>
      </div>

      <!-- Marketing Opt-in -->
      <div class="field checkbox insightly-field">
        <label for="insightly_opt_in_1__c">Marketing Opt-in</label>
        <input id="insightly_opt_in_1__c" type="checkbox" name="opt_in_1__c" value="true" />
      </div>

      <!-- Recaptcha -->
      <!-- <script src="https://www.google.com/recaptcha/api.js" async defer></script> -->
      <component
        :is="'script'"
        :id="'recaptcha'"
        src="https://www.google.com/recaptcha/api.js"
        type="text/javascript"
        async
        defer
      />
      <div class="g-recaptcha" data-sitekey="6LesGKMZAAAAAAn6iPYIVBf2PLJWEUdwRXHdfXcM"></div>

      <!-- Submit -->
      <div class="button-container actions">
        <input
          type="submit"
          value="Submit"
          :class="[{ disabled: !canSubmit }, 'sky-blue-100']"
          :disabled="!canSubmit"
        />
      </div>
    </form>

    <div v-if="showMessage" class="messages">
      <span class="success p3">
        {{ responseMessage }}
      </span>
    </div>
  </div>
</template>

<script setup lang="ts">
  // ===========================================================================
  // Libraries, Components, Types, Interfaces, etc.
  // ===========================================================================
  import {
    // computed,
    // defineProps,
    // defineComponent
    onMounted,
    // reactive,
    ref,
  } from 'vue'
  import { submit } from '@/apis/insightly.api'
  // import { IInsightlyFormContactUs } from '@/types/general'

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
  const insightlyForm = ref<InstanceType<typeof HTMLFormElement>>()
  const showMessage = ref(false)
  const responseMessage = ref('')
  const formErrors = ref<InstanceType<typeof Array<string>>>([])
  const canSubmit = ref(true)

  // ===========================================================================
  // Computed
  // ===========================================================================
  // const canSubmit = computed(() => false)

  // ===========================================================================
  // Methods
  // ===========================================================================
  const resetMessages = () => {
    formErrors.value = []
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const formSubmitHandler = (event: Event) => {
    // const formData = new FormData(insightlyForm.value as InstanceType<typeof HTMLFormElement>)
    const formDataElement = insightlyForm.value as InstanceType<typeof HTMLFormElement>
    const formData = new FormData(formDataElement)
    const action = formDataElement.action

    // Disable Button
    canSubmit.value = false

    // if (props.debug) {
    //   console.log('')
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - event: ', event)
    //   console.log('--------------------------------------')
    //   // eslint-disable-next-line prettier/prettier
    //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - formData: ', formData)
    //   console.log('--------------------------------------')
    //   // eslint-disable-next-line prettier/prettier
    //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - formData.email: ', formData.email)
    //   console.log('--------------------------------------')
    //   // eslint-disable-next-line prettier/prettier
    //   // console.log('InsightlyFormContactUs.vue - formSubmitHandler - formDataElement: ', formDataElement)
    //   console.log('--------------------------------------')
    //   // eslint-disable-next-line prettier/prettier
    //   // console.log('InsightlyFormContactUs.vue - formSubmitHandler - formData.values(): ', formData.values())
    //   console.log('--------------------------------------')
    //   // eslint-disable-next-line prettier/prettier
    //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - action: ', action)
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('')
    // }

    /* eslint-disable */
    const status = submit({ action, formData })
      .then((response) => {
        // if (props.debug) {
        //   console.log('')
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   // eslint-disable-next-line prettier/prettier
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - response: ', response)
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - responseMessage (BEFORE): ', responseMessage)
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   console.log('')
        // }

        responseMessage.value = 'Thank you for subscribing!'
        showMessage.value = true

        // if (props.debug) {
        //   console.log('')
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   // eslint-disable-next-line prettier/prettier
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - responseMessage (AFTER): ', responseMessage)
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   console.log('')
        // }
      })
      .catch((error) => {
        // if (props.debug) {
        //   console.log('')
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   // eslint-disable-next-line prettier/prettier
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - error: ', error)
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   console.log('')
        // }

        formErrors.value.push(error ? error : 'An error occurred. Please try again later.')

        // if (props.debug) {
        //   console.log('')
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   // eslint-disable-next-line prettier/prettier
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - formErrors.value: ', formErrors.value)
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - formErrors.value.length: ', formErrors.value.length)
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - !!formErrors.value.length: ', !!formErrors.value.length)
        //   console.log('InsightlyFormContactUs.vue - formSubmitHandler - !!formErrors?.value?.length: ', !!formErrors?.value?.length)
        //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        //   console.log('')
        // }
      })
      .finally(() => {
        // Enable Button
        canSubmit.value = true
      })
    /* eslint-enable */
  }

  // ===========================================================================
  // Lifecycle Hooks
  // ===========================================================================
  onMounted(() => {
    // if (props.debug) {
    //   console.log('')
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('InsightlyFormContactUs.vue - props: ', props)
    //   console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    //   console.log('')
    // }
  })
</script>

<style setup lang="scss" scoped>
  .insightly-form-container {
    .insightly-form {
      .actions {
        align-content: flex-start;
        align-items: flex-start;
        justify-content: flex-start;
        margin-top: 0;

        input[type='submit'] {
          // margin-top: 2rem;
          cursor: pointer;

          &.disabled,
          :disabled {
            opacity: 0.5;
            cursor: progress;
          }
        }
      }
    }
  }
</style>

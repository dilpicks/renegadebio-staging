<template #requestAQuoteForm>
  <div :id="props.id" :class="[
    'form-container',
    'insightly-form-container',
    ...(props?.classes ? props.classes : []),
  ]">
    <h3 v-if="!showMessage" class="h3 navy-100">
      Tell us about your organization or community. We'll get back to you within 24 hours with a quote.
    </h3>

    <form v-if="!showMessage" name='insightly_form' data-form-id='9589' ref="insightlyForm" class="form insightly-form"
      action='https://chloe.insightly.services/Forms/MTA3Mzg3My05NTg5LTIwMTA2ODQ%3d' method="post" enctype="text/plain"
      @submit.prevent="formSubmitHandler">
      <!-- Hidden -->
      <!-- <input type="hidden" name="formId" value="kIV7iQp0NxKWDHttwmR4eg==" />
                        <input id="insightly_ResponsibleUser" type="hidden" name="ResponsibleUser" value="1879762" />
                        <input id="insightly_LeadSource" type="hidden" name="LeadSource" value="3198396" /> -->

      <!-- Name -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="Name">Name</label> -->
        <input id='insightly_Full_Name__c' name='Full_Name__c' maxlength="256" type="text" placeholder="Full Name"
          required @input="resetMessages" />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Email -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="Email">Email</label> -->
        <input id='insightly_EMAIL_ADDRESS' name='EMAIL_ADDRESS' maxlength="256" type="Email" placeholder="Email" required
          @input="resetMessages" />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Organization -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="Organization">Organization</label> -->
        <input id='insightly_ORGANISATION_NAME' name='ORGANISATION_NAME' maxlength="256" type="text"
          placeholder="Organization Name" @input="resetMessages" />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Title -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="Title">Title</label> -->
        <input id='insightly_TITLE' name="Title" maxlength="256" type="text" placeholder="Title" @input="resetMessages" />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Phone -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="Title">Title</label> -->
        <input id='insightly_PHONE' name='PHONE' maxlength="256" type="text" placeholder="Phone" @input="resetMessages" />

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Interest Services -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="insightly_CRO_Services_1__c">CRO Services</label> -->
        <label for='Types_of_Laboratory_Services_Requested__c'></label>
        <select multiple id='insightly_Types_of_Laboratory_Services_Requested__c'
          name='Types_of_Laboratory_Services_Requested__c' value=''>
          <!-- <select id="Interest" name="Interest" data-name="Interest" required> -->
          <!-- <option value="">Please select one</option> -->
          <option value='PrEP Testing'>PrEP Testing</option>
          <option value='STI Testing'>STI Testing</option>
          <option value='FDA Approved RT-PCR COVID-19'>FDA Approved RT-PCR COVID-19</option>
          <option value='Lab Based RT-PCR Monkeypox Virus (MPOX)'>Lab Based RT-PCR Monkeypox Virus (MPOX)</option>
        </select>

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>

      <!-- Interest Services -->
      <div :class="[{ error: !!formErrors.length }, 'field', 'insightly-field']">
        <!-- <label for="insightly_CRO_Services_1__c">CRO Services</label> -->
        <label for='Number_of_Tests_Requested__c'></label>
        <select id='insightly_Number_of_Tests_Requested__c' name='Number_of_Tests_Requested__c' value=''>
          <!-- <select id="Interest" name="Interest" data-name="Interest" required> -->
          <!-- <option value="">Please select one</option> -->
          <option value='1-50'>1-50</option>
          <option value='51-100'>51-100</option>
          <option value='101-300'>101-300</option>
          <option value='301-1000'>301-1000</option>
          <option value='1001-5000'>1001-5000</option>
          <option value='5001+'>5001+</option>
        </select>

        <div class="message">
          <span v-for="(error, index) in formErrors" :key="index" class="error p3">
            {{ error }}
          </span>
        </div>
      </div>


      <!-- Message -->
      <div class="field insightly-field">
        <!-- <label for="Message">Message</label> -->
        <textarea id='insightly_additional_field' type="text" name='insightly_additional_field' maxlength="5000"
          placeholder="Comment" />
      </div>

      <!-- Submit -->
      <div class="button-container actions">
        <input type="submit" value="Submit" :class="[{ disabled: !canSubmit }, 'sky-blue-100']" :disabled="!canSubmit" />
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
import { submit } from '@/apis/contact.api'
import { SubmitMethod } from '@/types/general'

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
  debug: true,
})

// ===========================================================================
// "Frozen" Constants
// ===========================================================================
const form = ref<InstanceType<typeof HTMLFormElement>>()
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
  // const formData = new FormData(form.value as InstanceType<typeof HTMLFormElement>)
  const formDataElement = form.value as InstanceType<typeof HTMLFormElement>
  const formData = new FormData(formDataElement)
  const action = formDataElement.action
  const method = formDataElement.method as SubmitMethod

  // Disable Button
  canSubmit.value = false

  if (props.debug) {
    console.log('')
    console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    console.log('InsightlyFormContactUs.vue - formSubmitHandler - event: ', event)
    console.log('--------------------------------------')
    // eslint-disable-next-line prettier/prettier
    console.log('InsightlyFormContactUs.vue - formSubmitHandler - formData: ', formData)
    console.log('--------------------------------------')
    // eslint-disable-next-line prettier/prettier
    console.log(
      'InsightlyFormContactUs.vue - formSubmitHandler - formDataElement: ',
      formDataElement,
    )
    console.log('--------------------------------------')
    // eslint-disable-next-line prettier/prettier
    console.log(
      'InsightlyFormContactUs.vue - formSubmitHandler - formData.values(): ',
      formData.values(),
    )
    console.log('--------------------------------------')
    // eslint-disable-next-line prettier/prettier
    console.log('InsightlyFormContactUs.vue - formSubmitHandler - action: ', action)
    console.log('--------------------------------------')
    // eslint-disable-next-line prettier/prettier
    console.log('InsightlyFormContactUs.vue - formSubmitHandler - method: ', method)
    console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    console.log('')
  }

  /* eslint-disable */
  const status = submit({ action, method, formData })
    .then((response) => {
      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        // eslint-disable-next-line prettier/prettier
        console.log('InsightlyFormContactUs.vue - formSubmitHandler - response: ', response)
        console.log(
          'InsightlyFormContactUs.vue - formSubmitHandler - responseMessage (BEFORE): ',
          responseMessage,
        )
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }

      responseMessage.value = 'Thank you for contacting us.'
      showMessage.value = true

      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        // eslint-disable-next-line prettier/prettier
        console.log(
          'InsightlyFormContactUs.vue- formSubmitHandler - responseMessage (AFTER): ',
          responseMessage,
        )
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }
    })
    .catch((error) => {
      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        // eslint-disable-next-line prettier/prettier
        console.log('InsightlyFormContactUs.vue - formSubmitHandler - error: ', error)
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }

      formErrors.value.push(error ? error : 'An error occurred. Please try again later.')

      if (props.debug) {
        console.log('')
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        // eslint-disable-next-line prettier/prettier
        console.log(
          'InsightlyFormContactUs.vue - formSubmitHandler - formErrors.value: ',
          formErrors.value,
        )
        console.log(
          'InsightlyFormContactUs.vue - formSubmitHandler - formErrors.value.length: ',
          formErrors.value.length,
        )
        console.log(
          'InsightlyFormContactUs.vue - formSubmitHandler - !!formErrors.value.length: ',
          !!formErrors.value.length,
        )
        console.log(
          'InsightlyFormContactUs.vue - formSubmitHandler - !!formErrors?.value?.length: ',
          !!formErrors?.value?.length,
        )
        console.log('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
        console.log('')
      }
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
    // [placeholder]:focus::-webkit-input-placeholder {
    //   transition: all 0.25s ease-out;
    //   opacity: 1;
    // }

    .actions {
      align-content: flex-start;
      align-items: flex-start;
      justify-content: flex-start;
      margin-top: 1.4rem;

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

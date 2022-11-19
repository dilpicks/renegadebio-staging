# rails db:seed:test_seeds
# heroku run rails db:seed:test_seeds --app renegadebio-staging

# ===========================================================================
# Tests
# ===========================================================================
# ActiveRecord::Base.connection.execute("TRUNCATE TABLE tests RESTART IDENTITY")

tests = [
  {
    slug: 'monkeypox-pcr-high-sensitivity-qualitative-naat',
    code: '1012',
    cpt_codes: ['87593'],
    name: 'Monkeypox PCR, High-Sensitivity, Qualitative NAAT',
    title: nil,
    shown: true,
    available: true,
    published_at: Time.current,
    characteristics_attributes: [
      # ---------------------------------------------------------------------------
      # Test Specifications
      # ---------------------------------------------------------------------------
      {
        characteristic_group_id: CharacteristicGroup::TEST_SPECIFICATIONS,
        shown: true,
        name: 'Test Includes',
        title: 'Includes',
        copy_blocks_attributes: [
          { content: '<p class="p3">N/A</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_SPECIFICATIONS,
        shown: true,
        name: 'Special Instructions',
        copy_blocks_attributes: [
          { content: '<p class="p3">N/A</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_SPECIFICATIONS,
        shown: true,
        name: 'Turnaround Time',
        copy_blocks_attributes: [
          { content: '<p class="p3">24 hours</p>' }
        ]
      },

      # ---------------------------------------------------------------------------
      # Specimen Requirements
      # ---------------------------------------------------------------------------
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Specimen',
        title: nil,
        copy_blocks_attributes: [
          { content: '<p class="p3">Lesion swab</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Volume',
        title: nil,
        copy_blocks_attributes: [
          { content: '<p class="p3">1mL</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Container',
        title: nil,
        copy_blocks_attributes: [
          { content: '<p class="p3">2mL Hamilton Tube</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Collection',
        title: nil,
        copy_blocks_attributes: [
          { content: '<p class="p3">Viral swab taken from one or more vesicles or ulcers</p>' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Storage Instructions',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <p class="p3">
              Sample must be in 1mL of RNA/DNA shield 1x dry
            </p>
            <p class="p3">
              Storage: Reagent stable –80°C to 70°C (ambient temperature)<br>
              RNA: Ambient temperature (4°C–25°C) >1 month<br>
              DNA: Ambient temperature (4°C–25°C) >2 years<br>
              DNA & RNA: Frozen (<–20°C): Indefinitel
            </p>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: true,
        name: 'Causes for Rejection',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <ul class="bullet-list">
              <li>Specimens submitted in improper tube or container</li>
              <li>Unlabeled specimens</li>
              <li>Leaking containers</li>
              <li>Specimens with syringes or needles attached</li>
              <li>Specimens that do not contain required information (doctor&rsquo;s name, phone #, diagnosis, etc.)</li>
              <li>Insufficient or incorrect sample type (ex. tissue)</li>
            </ul>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::SPECIMEN_REQUIREMENTS,
        shown: false,
        name: 'Sample Stability',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '' }
        # ]
      },

      # ---------------------------------------------------------------------------
      # Test Details
      # ---------------------------------------------------------------------------
      {
        characteristic_group_id: CharacteristicGroup::TEST_DETAILS,
        shown: true,
        name: 'Use',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <p class="p3">
              MSM, Bay Area, Low/No access locations<br>
              Outbreaks: Monkeypox is diagnosed by PCR test on a viral swab taken from one or more vesicles or ulcers<br>
              All people, symptoms or exposure (screening in development)
            </p>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_DETAILS,
        shown: true,
        name: 'Limitations',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <p class="p3">
              A false negative result may occur if a sample is improperly collected, transported or handled. False negative 
              results may occur if the quantity of viral DNA present in the sample is below the limit of detection for the assay. 
              An inconclusive result may be returned if the lesion is not adequately sampled.
            </p>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_DETAILS,
        shown: true,
        name: 'Disclaimers',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <p class="p3">
              The Monkeypox DNA and mRNA Real-time PCR is intended for the qualitative detection of Monkeypox virus using swabs 
              from human pustular or vesicular rash specimens. This test was developed and its analytical performance characteristics 
              have been determined by the Renegade laboratory. It has not been cleared or approved by the U.S. Food and Drug 
              Administration. This assay has been validated pursuant to the CLIA regulations and is used for clinical purposes.
            </p>
            <p class="p3">
              MPXV Detected: Monkeypox detected by PCR. This test result does not rule out bacterial infection or other viral infection. 
              The results should be interpreted in conjunction with clinical evidence, since this assay does NOT distinguish between 
              infectious and non-infectious (e.g. inactivated, treated) viral material. Interpretation of all results must combine with 
              clinical observations, patient history, and epidemiological information of the patient and other diagnostic procedures.
            </p>
            <p class="p3">
              MPXV Not Detected: Monkeypox Not Detected by PCR. Not Detected results do not preclude the possibility of infection and 
                should not be used as the sole basis for treatment or other patient management decisions.  Interpretation of all results 
                must combine with clinical observations, patient history, and epidemiological information of the patient and other
              diagnostic procedures.
            </p>
            <p class="p3">
              Inconclusive: An inconclusive result may occur in the case of an inadequate specimen. If a patient diagnosis has not been 
                determined, submit an additional specimen for analysis.
            </p>
            <p class="p3">
              Equivocal: An equivocal result may occur in the case of an inadequate specimen where definitive detection of Monkeypox 
                DNA and mRNA could not be confirmed. If a patient diagnosis has not been determined, submit an additional specimen for 
                analysis.MPXV Detected: Monkeypox detected by PCR. This test result does not rule out bacterial infection or other viral 
                infection. The results should be interpreted in conjunction with clinical evidence, since this assay does NOT 
                distinguish between infectious and non-infectious (e.g. inactivated, treated) viral material. Interpretation of 
                all results must combine with clinical observations, patient history, and epidemiological information of the 
                patient and other diagnostic procedures.
            </p>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_DETAILS,
        shown: true,
        name: 'Methodology',
        title: nil,
        copy_blocks_attributes: [
          { content: '
            <p class="p3">
              Multiplex RT-PCR
            </p>
          ' }
        ]
      },
      {
        characteristic_group_id: CharacteristicGroup::TEST_DETAILS,
        shown: false,
        name: 'Additional Resources',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },

      # ---------------------------------------------------------------------------
      # LOINC Codes
      # ---------------------------------------------------------------------------
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      },
      {
        characteristic_group_id: CharacteristicGroup::LOINC_CODES,
        shown: false,
        name: 'Order Code',
        title: nil,
        # copy_blocks_attributes: [
        #   { content: '
        #     <p class="p3">
        #     </p>
        #   ' }
        # ]
      }
    ]
  }
]

tests.each do |test_attributes|
  puts ''
  puts '###########################################################################'
  puts "Test Name: "
  puts "#{ap test_attributes[:name]}"
  puts '###########################################################################'
  puts ''

  existing_test = Test.find_by(name: test_attributes[:name])
  existing_test.present? ? existing_test.update!(test_attributes) : Test.create!(test_attributes)
end

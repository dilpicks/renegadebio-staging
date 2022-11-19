# rails db:seed:event_seeds
# heroku run rails db:seed:event_seeds --app renegadebio-staging

# ===========================================================================
# Events
# ===========================================================================

timeline_events = [
  # 2016
  {
    # Event Collection / Year
    id: 'timeline-year-2016',
    classes: ['timeline-year'],
    title: '2016',
    event_groups: [
      {
        # Event Group / Month
        id: 'timeline-event-group-2016-unspecified',
        classes: ['timeline-month'],
        title: nil,
        events: [
          {
            # Event
            id: 'timeline-event-group-2016-unspecified-unspecified',
            classes: ['timeline-event'],
            title: nil,
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">CEO Craig Rouskey was in IndieBio Batch 3 and founded Bionascent, Inc.</p>' }
            ]
          }
        ]
      }
    ]
  },

  # 2019
  {
    id: 'timeline-year-2019',
    classes: ['timeline-year'],
    title: '2019',
    event_groups: [
      {
        id: 'timeline-event-group-2019-unspecified',
        classes: ['timeline-month'],
        title: nil,
        events: [
          {
            id: 'timeline-event-group-2019-unspecified-unspecified',
            classes: ['timeline-event'],
            title: nil,
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">CEO Craig Rouskey was in IndieBio Batch 9 as well, to found Pando Nutrition, Inc.; along with our VP of Product Development Gabriel Paulino, who founded BioLumen.</p>' }
            ]
          }
        ]
      }
    ]
  },

  # 2020
  {
    id: 'timeline-year-2020',
    classes: ['timeline-year'],
    title: '2020',
    event_groups: [
      {
        id: 'timeline-event-group-2020-mar',
        classes: ['timeline-month'],
        title: 'mar',
        events: [
          {
            id: 'timeline-event-group-2020-mar-march-11',
            classes: ['timeline-event'],
            title: 'March 11',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">When WHO declared the pandemic, Craig, Gabriel pivoted to create renegade.bio</p>' }
            ]
          },
          {
            id: 'timeline-event-group-2020-mar-march-18',
            classes: ['timeline-event'],
            title: 'March 18',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">renegade.bio officially became a Public Benefit Corporation</p>' }
            ]
          },
          {
            id: 'timeline-event-group-2020-mar-march-24',
            classes: ['timeline-event'],
            title: 'March 24',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Created our COVID test, conducted testing in the Bay Area</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2020-apr',
        classes: ['timeline-month'],
        title: 'apr',
        events: [
          {
            id: 'timeline-event-group-2020-apr-april-4',
            classes: ['timeline-event'],
            title: 'April 4',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Operated our first COVID lab in NYC</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2020-jun',
        classes: ['timeline-month'],
        title: 'jun',
        events: [
          {
            id: 'timeline-event-group-2020-jun-june-1',
            classes: ['timeline-event'],
            title: 'June',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Received our CLIA license</p>' }
            ]
          },
          {
            id: 'timeline-event-group-2020-jun-june-2',
            classes: ['timeline-event'],
            title: 'June',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Launched Test The People at San Francisco at Pride, testing nearly 600 participants in under 48 hours; this proved we could run ~300 tests per day</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2020-sep',
        classes: ['timeline-month'],
        title: 'sep',
        events: [
          {
            id: 'timeline-event-group-2020-sep-september',
            classes: ['timeline-event'],
            title: 'September',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Became the first lab in the West Coast authorized to run SalivaDirect™</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2020-oct',
        classes: ['timeline-month'],
        title: 'oct',
        events: [
          {
            id: 'timeline-event-group-2020-oct-october',
            classes: ['timeline-event'],
            title: 'October',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Launched our collection site at CHORI</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2020-nov',
        classes: ['timeline-month'],
        title: 'nov',
        events: [
          {
            id: 'timeline-event-group-2020-nov-november',
            classes: ['timeline-event'],
            title: 'November',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Partnered with Microgenesis to validate and bring their novel fertility health test to market in the U.S.</p>' }
            ]
          },
          {
            id: 'timeline-event-group-2020-nov-november-december',
            classes: ['timeline-event'],
            title: 'November - December',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Performed community 6,886 free tests for UCSF and Unidos en Salud as part of a UCSF research study to determine peak transmissibility using Binax Now cards alongside clinical Analysis of our rXP assay</p>' }
            ]
          }
        ]
      },
    ],
  },

  # 2021
  {
    id: 'timeline-year-2021',
    classes: ['timeline-year'],
    title: '2021',
    event_groups: [
      {
        id: 'timeline-event-group-2021-jan',
        classes: ['timeline-month'],
        title: 'jan',
        events: [
          {
            id: 'timeline-event-group-2021-jan-january',
            classes: ['timeline-event'],
            title: 'January',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Launched SalivaDirect™</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2021-feb',
        classes: ['timeline-month'],
        title: 'feb',
        events: [
          {
            id: 'timeline-event-group-2021-feb-february',
            classes: ['timeline-event'],
            title: 'February',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy"><a href="https://primary.health/" rel="noopener" target="_blank">Primary</a>, in coordination with renegade.bio IT, activated the single barcode scan, allowing people to self-register, administer, and self scan their saliva tubes anywhere</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2021-jun',
        classes: ['timeline-month'],
        title: 'jun',
        events: [
          {
            id: 'timeline-event-group-2021-jun-june',
            classes: ['timeline-event'],
            title: 'June',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Partnered with biotech company Metabolomic Dx to bring PrePsia–for early detection of preeclampsia risks–to market</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2021-sep',
        classes: ['timeline-month'],
        title: 'sep',
        events: [
          {
            id: 'timeline-event-group-2021-sep-september',
            classes: ['timeline-event'],
            title: 'September',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Began R&D for cardiovascular</p>' }
            ]
          }
        ]
      },
      {
        id: 'timeline-event-group-2021-dec',
        classes: ['timeline-month'],
        title: 'dec',
        events: [
          {
            id: 'timeline-event-group-2021-dec-december',
            classes: ['timeline-event'],
            title: 'December',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Secured our incredible new laboratory in Berkeley</p>' }
            ]
          }
        ]
      },
    ],
  },

  # 2022
  {
    id: 'timeline-year-2022',
    classes: ['timeline-year'],
    title: '2022',
    event_groups: [
      {
        id: 'timeline-event-group-2022-mar',
        classes: ['timeline-month'],
        title: 'mar',
        events: [
          {
            id: 'timeline-event-group-2022-mar-march',
            classes: ['timeline-event'],
            title: 'March',
            copy_blocks_attributes: [
              { content: '<p class="timeline-event-copy">Moved into our new laboratory in Berkeley</p>' }
            ]
          }
        ]
      },
    ],
  }
]


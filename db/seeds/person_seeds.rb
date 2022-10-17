# rails db:seed:person_seeds
# heroku run rails db:seed:person_seeds --app renegadebio-staging

# ===========================================================================
# People
# ===========================================================================

people = [
  {
    # id: 1,
    name: 'Carol Carmick',
    bio: '<p><strong>Carol Carmick</strong> (aka Stella Maris) is a strategic copywriter, cauldron technician, and community instigator in Portland, Oregon. <a href="http://www.carolcarmick.com/" target="_blank"><strong>www.carolcarmick.com</strong></a></p>'
  },
  {
    # id: 2,
    name: 'Craig Rouskey',
    bio: '<p><strong>Craig Rouskey</strong> is a co-founder &amp; CEO of <a href="https://renegade.bio" target="_self">renegade.bio</a>, a Public Benefit Corporation, which offers the SalivaDirect&trade; test and other diagnostic tests on a commercial basis.</p>'
  },
  {
    # id: 3,
    slug: 'gabriel-paulino-phd',
    name: 'Gabriel Paulino, PHD',
    bio: '<p><strong>Gabriel Paulino</strong> is a co-founder &amp; VP of Product Development of <a href="https://renegade.bio" target="_self">renegade.bio</a>, a Public Benefit Corporation, which offers the SalivaDirect&trade; test and other diagnostic tests on a commercial basis.</p>'
  },
  {
    # id: 4,
    name: 'Garrett Christopher',
    bio: '<p><strong>Garrett Christopher</strong> is a writer, artist and plant geek living in Portland OR. He helps brands and businesses create engaging, clear, and creative content. Omnivorous with a taste for the odd and captivating he writes about current events, the arts and culture.</p>'
  },
  {
    # id: 5,
    name: 'Jared Morgan',
    bio: '<p><strong>Jared Morgan</strong> leads brand and marketing at <a href="https://renegade.bio" target="_self">renegade.bio</a>. He also creates art from his home studio in Louisville, KY after 20 years of film, documentary, commercial, and marketing work in the San Francisco Bay and Portland, OR.</p>'
  },
  {
    # id: 6,
    name: 'Tristan Vitale',
    bio: '<p>Tristan Vitale is a digital marketer, music producer and outdoor enthusiast living in San Francisco, CA. He began his marketing career with <a href="https://renegade.bio" target="_self">renegade.bio</a> after completing his bachelor degree at Northern Michigan University.</p>'
  }
]

people.each do |person_attributes|
  puts ''
  puts '###########################################################################'
  puts "Person Name: "
  puts "#{ap person_attributes[:name]}"
  puts '###########################################################################'
  puts ''

  existing_person = Person.find_by(name: person_attributes[:name])
  existing_person.present? ? existing_person.update!(person_attributes) : Person.create!(person_attributes)
end

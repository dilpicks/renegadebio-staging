# rails db:seed:characteristic_group_seeds
# heroku run rails db:seed:characteristic_group_seeds --app renegadebio-staging

# ===========================================================================
# People
# ===========================================================================
# ActiveRecord::Base.connection.execute("TRUNCATE TABLE characteristic_groups RESTART IDENTITY")

characteristic_groups = [
  {
    slug: 'test-specifications',
    name: 'Test Specifications',
    title: 'Specifications'
  },
  {
    slug: 'specimen-requirements',
    name: 'Specimen Requirements',
    title: 'Specimen'
  },
  {
    slug: 'test-details',
    name: 'Test Details',
    title: 'Details'
  },
  {
    slug: 'loinc-codes',
    name: 'LOINC Codes',
    title: nil
  }
]

characteristic_groups.each do |characteristic_group|
  puts ''
  puts '###########################################################################'
  puts "CharacteristicGroup Name: "
  puts "#{ap characteristic_group[:name]}"
  puts '###########################################################################'
  puts ''

  existing_characteristic_group = CharacteristicGroup.find_by(name: characteristic_group[:name])
  existing_characteristic_group.present? ? existing_characteristic_group.update!(characteristic_group) : CharacteristicGroup.create!(characteristic_group)
end

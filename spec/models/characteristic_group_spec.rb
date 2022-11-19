# == Schema Information
#
# Table name: characteristic_groups
#
#  created_at :datetime         not null
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  slug       :string
#  title      :string(255)
#  updated_at :datetime         not null
#
# Indexes
#
#  index_characteristic_groups_on_slug  (slug) UNIQUE
#
require 'rails_helper'

RSpec.describe CharacteristicGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

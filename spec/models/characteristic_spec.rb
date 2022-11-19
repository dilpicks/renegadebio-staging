# == Schema Information
#
# Table name: characteristics
#
#  characteristic_group_id :bigint           not null
#  created_at              :datetime         not null
#  id                      :bigint           not null, primary key
#  name                    :string(255)      not null
#  shown                   :boolean          default(TRUE), not null
#  slug                    :string
#  test_id                 :bigint           not null
#  title                   :string(255)
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_characteristics_on_characteristic_group_id  (characteristic_group_id)
#  index_characteristics_on_slug                     (slug) UNIQUE
#  index_characteristics_on_test_id                  (test_id)
#
require 'rails_helper'

RSpec.describe Characteristic, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

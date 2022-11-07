# == Schema Information
#
# Table name: people
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string(255)      not null
#  bio         :text
#  slug        :string
#  team_member :boolean          default(FALSE), not null
#  featured    :boolean          default(FALSE), not null
#  title       :string(255)
#  summary     :text
#  link        :text
#
# Indexes
#
#  index_people_on_slug  (slug) UNIQUE
#
require 'rails_helper'

RSpec.describe Person, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

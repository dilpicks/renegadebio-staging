# == Schema Information
#
# Table name: images
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  src            :text             not null
#  title          :string(255)
#  alt            :string(255)
#  width          :integer
#  height         :integer
#  classes        :text             default([]), is an Array
#  imageable_type :string
#  imageable_id   :bigint
#  slug           :string
#  primary        :boolean          default(FALSE), not null
#
# Indexes
#
#  index_images_on_imageable                                    (imageable_type,imageable_id)
#  index_images_on_primary_and_imageable_id_and_imageable_type  (primary,imageable_id,imageable_type) UNIQUE WHERE ("primary" = true)
#  index_images_on_slug                                         (slug) UNIQUE
#
require 'rails_helper'

RSpec.describe Image, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: copy_blocks
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  contentable_type :string           not null
#  contentable_id   :bigint           not null
#  active           :boolean          default(TRUE), not null
#  content          :text
#  classes          :text             default([]), is an Array
#  slug             :string
#
# Indexes
#
#  index_copy_blocks_on_contentable  (contentable_type,contentable_id)
#  index_copy_blocks_on_slug         (slug) UNIQUE
#
require 'rails_helper'

RSpec.describe CopyBlock, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

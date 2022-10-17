# frozen_string_literal: true

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
class ImageSerializer
  include JSONAPI::Serializer

  # Config
  # ==========================================================================================================
    set_key_transform :camel_lower
    set_id { |record, params| record.slug }

  # Attributes
  # ==========================================================================================================
    attributes  :src,
                :title,
                :alt,
                :width,
                :height,
                :classes,
                :primary

  # Conditional Attributes
  # ==========================================================================================================
    attribute :title, if: Proc.new { |record|
      record.title.present?
    }

    attribute :alt, if: Proc.new { |record|
      record.alt.present?
    }

    attribute :width, if: Proc.new { |record|
      record.width.present?
    }

    attribute :height, if: Proc.new { |record|
      record.height.present?
    }

    attribute :classes, if: Proc.new { |record|
      record.classes.present?
    }

  # Virtual / Alias Attributes
  # ===============================================================================================

  # Associations
  # ===============================================================================================
end

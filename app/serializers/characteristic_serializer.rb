# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  article_type_id  :bigint           not null
#  classes          :string           default([]), is an Array
#  created_at       :datetime         not null
#  featured         :boolean          default(TRUE), not null
#  id               :bigint           not null, primary key
#  link             :text
#  location         :text
#  meta_description :text
#  meta_title       :string(255)
#  page_status_id   :bigint           not null
#  published_at     :datetime
#  slug             :string
#  source           :string(255)
#  subtitle         :string(255)
#  summary          :text
#  title            :string(255)      not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_articles_on_article_type_id  (article_type_id)
#  index_articles_on_page_status_id   (page_status_id)
#  index_articles_on_slug             (slug) UNIQUE
#  index_articles_on_title            (title) UNIQUE
#
class CharacteristicSerializer
  include Rails.application.routes.url_helpers
  include JSONAPI::Serializer

  # Config
  # ==========================================================================================================
    set_key_transform :camel_lower
    set_id { |record, params| record.slug }

  # Attributes
  # ==========================================================================================================
    attributes  :name,
                :title,
                :shown
                # :classes

  # Conditional Attributes
  # ==========================================================================================================

  # Virtual / Alias Attributes
  # ==========================================================================================================
    # attribute :page_status do |record|
    #   record.page_status.slug
    # end

    attribute :copy_blocks do |record|
      record.copy_blocks.map { |copy_block|
        abridged_copy_block = copy_block.slice(:content)
        abridged_copy_block[:id] = copy_block.slug
        abridged_copy_block[:classes] = copy_block.classes if copy_block.classes.present?

        # return
        abridged_copy_block
      }
    end

  # Associations
  # ==========================================================================================================
end

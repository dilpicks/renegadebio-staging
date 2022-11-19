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
#  published_at     :datetimew
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
class TestSerializer
  include Rails.application.routes.url_helpers
  include JSONAPI::Serializer

  # Config
  # ==========================================================================================================
    set_key_transform :camel_lower
    set_id { |record, params| record.slug }

  # Attributes
  # ==========================================================================================================
    attributes  :available,
                :code,
                :cpt_codes,
                :name,
                :published_at,
                :shown,
                :title

  # Conditional Attributes
  # ==========================================================================================================
    # attribute :classes, if: Proc.new { |record|
    #   record.classes.present?
    # }

  # Virtual / Alias Attributes
  # ==========================================================================================================
    attribute :link do |record|
      ilink = {
        type: 'route-link',
        href: 'test', # test_url(record),
        params: {
          id: record.slug
        }
      }

      # return
      ilink
    end

    # attribute :image do |record|
    #   abridged_image = nil

    #   if record.primary_image.present?
    #     abridged_image = record.primary_image.slice(:src)
    #     abridged_image[:id] = record.primary_image.slug if record.primary_image.slug.present?
    #     abridged_image[:title] = record.primary_image.title if record.primary_image.title.present?
    #     abridged_image[:alt] = record.primary_image.alt if record.primary_image.alt.present?
    #     abridged_image[:width] = record.primary_image.width if record.primary_image.width.present?
    #     abridged_image[:height] = record.primary_image.height if record.primary_image.height.present?
    #     abridged_image[:classes] = record.primary_image.classes if record.primary_image.classes.present?
    #   end

    #   # return
    #   abridged_image
    # end

    # attribute :link do |record|
    #   abridged_link = nil

    #   if record.link.present?
    #     abridged_link = { href: record.link, type: 'external', classes: ['article-link'] }
    #   else
    #     abridged_link = {
    #       href: 'article',
    #       type: 'route-link',
    #       classes: ['article-link'],
    #       params: {
    #         id: record.slug
    #       }
    #     }
    #   end

    #   # return
    #   abridged_link
    # end

    attribute :published_date do |record|
      record.published_at.strftime('%m/%d/%Y')
    end

    attribute :characteristic_groups do |record|
      record.characteristic_groups.map do |characteristic_group|
        abridged_characteristic_group = {
          id: characteristic_group.slug,
          name: characteristic_group.display_name
        }

        abridged_characteristic_group[:characteristics] = characteristic_group.characteristics.map do |characteristic|
          abridged_characteristic = {
            id: characteristic.slug,
            name: characteristic.display_name,
            shown: characteristic.shown
          }

          abridged_characteristic[:copy_blocks] = characteristic.copy_blocks.map do |copy_block|
            # return
            {
              id: copy_block.slug,
              content: copy_block.content,
              classes: copy_block.classes.present? ? copy_block.classes : []
            }
          end

          # return
          abridged_characteristic
        end

        # return
        abridged_characteristic_group
      end
    end

  # Associations
  # ==========================================================================================================
end

module FastJsonapi
  module ObjectSerializer
    class_methods do
      def override_type(type_name = nil, &block)
        self.record_type = block || type_name
      end
    end
  end
end

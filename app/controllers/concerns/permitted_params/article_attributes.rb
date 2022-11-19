# include PermittedParams::ArticleTypeAttributes

module PermittedParams
  module ArticleAttributes
    extend ActiveSupport::Concern

    PERMITTED_PARAMS_ARTICLE = [
      # ----------------------------------------------------------------------------------------------------------
      # Quasi-Universal Params
      # ----------------------------------------------------------------------------------------------------------
        :_destroy,

        :id,
        :slug,

        :created_at,
        :updated_at,

      # ----------------------------------------------------------------------------------------------------------
      # Other DB Backed Model Params
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `array`, `hstore`, and `jsonb` Column Types
      # ----------------------------------------------------------------------------------------------------------
        { classes: [] },

      # ----------------------------------------------------------------------------------------------------------
      # Alias Params
      # ----------------------------------------------------------------------------------------------------------
        :article_type, # serves as the URL param for filtering by ArticleType – e.g.: ?article_type=news

      # ----------------------------------------------------------------------------------------------------------
      # Virtual Params
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` (Virtual & Alias Params)
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `belongs_to`
      # ----------------------------------------------------------------------------------------------------------
        :article_type_id,
        :page_status_id,

      # ----------------------------------------------------------------------------------------------------------
      # `belongs_to` (Nested Params)
      # ----------------------------------------------------------------------------------------------------------
        # lessee_nested_attributes

        # { lessee_attributes: [:airport_id, :airline_id, :signatory_airline] }

      # ----------------------------------------------------------------------------------------------------------
      # `has_one` (Polymorphic) - (Note "foo" vs "foos" – plural is for `has_many`)
      # ----------------------------------------------------------------------------------------------------------
        # { primary_image_attributes: PERMITTED_PARAMS_IMAGE },

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` (Polymorphic)
      # ----------------------------------------------------------------------------------------------------------
        # { images_attributes: PERMITTED_PARAMS_IMAGE },
        # { copy_blocks_attributes: PERMITTED_PARAMS_COPY_BLOCK },
        ::PermittedParams::CopyBlockAttributes.copy_blocks_nested_attributes

      # ----------------------------------------------------------------------------------------------------------
      # `has_many :through`
      # ----------------------------------------------------------------------------------------------------------
        # fizz_ids,

      # ----------------------------------------------------------------------------------------------------------
      # `has_one` - (Note "fizz" vs "fizzs" – plural is for `has_many`)
      # ----------------------------------------------------------------------------------------------------------
        # fizz_nested_attributes

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` - (Note only the top-level `has_many` is required. The permitted params for the `through` association is in it's respective `PermitedParams` module)
      # ----------------------------------------------------------------------------------------------------------
    ].freeze

    # ----------------------------------------------------------------------------------------------------------
    # has_one accepts_nested_attributes_for
    # ----------------------------------------------------------------------------------------------------------
      def self.article_nested_attributes
        { article_attributes: PERMITTED_PARAMS_ARTICLE }
      end

    # ----------------------------------------------------------------------------------------------------------
    # has_many accepts_nested_attributes_for
    # ----------------------------------------------------------------------------------------------------------
      def self.articles_nested_attributes
        { articles_attributes: PERMITTED_PARAMS_ARTICLE }
      end

    # ----------------------------------------------------------------------------------------------------------
    # `has_many :through`
    # ----------------------------------------------------------------------------------------------------------
      def self.article_ids
        { article_ids: [] }
      end
  end
end

# include PermittedParams::CharacteristicTypeAttributes

module PermittedParams
  module CharacteristicAttributes
    extend ActiveSupport::Concern

    PERMITTED_PARAMS_CHARACTERISTIC = [
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
        :code,
        :name,
        :title,
        :shown,

      # ----------------------------------------------------------------------------------------------------------
      # `array`, `hstore`, and `jsonb` Column Types
      # ----------------------------------------------------------------------------------------------------------
        # { cpt_codes: [] }

      # ----------------------------------------------------------------------------------------------------------
      # Alias Params
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # Virtual Params
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` (Virtual & Alias Params)
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `belongs_to`
      # ----------------------------------------------------------------------------------------------------------
        :characteristic_group_id,
        :test_id,

      # ----------------------------------------------------------------------------------------------------------
      # `belongs_to` (Nested Params)
      # ----------------------------------------------------------------------------------------------------------
        # foo_nested_attributes

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
      # `has_one` - (Note "fizz" vs "fizzs" – plural is for `has_many`)
      # ----------------------------------------------------------------------------------------------------------
        # fizz_nested_attributes

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` - (Note only the top-level `has_many` is required. The permitted params for the `through` association is in it's respective `PermitedParams` module)
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `has_many :through`
      # ----------------------------------------------------------------------------------------------------------
        # fizz_ids,
    ].freeze

    # ----------------------------------------------------------------------------------------------------------
    # has_one accepts_nested_attributes_for
    # ----------------------------------------------------------------------------------------------------------
      def self.characteristic_nested_attributes
        { characteristic_attributes: PERMITTED_PARAMS_CHARACTERISTIC }
      end

    # ----------------------------------------------------------------------------------------------------------
    # has_many accepts_nested_attributes_for
    # ----------------------------------------------------------------------------------------------------------
      def self.characteristics_nested_attributes
        { characteristics_attributes: PERMITTED_PARAMS_CHARACTERISTIC }
      end

    # ----------------------------------------------------------------------------------------------------------
    # `has_many :through`
    # ----------------------------------------------------------------------------------------------------------
      def self.characteristic_ids
        { characteristic_ids: [] }
      end
  end
end

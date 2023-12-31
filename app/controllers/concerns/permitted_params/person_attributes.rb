module PermittedParams
  module PersonAttributes
    extend ActiveSupport::Concern

    PERMITTED_PARAMS_PERSON = [
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
        :name,
        :summary,
        :team_member,
        :feature,
        :title,
        :bio,
        :link

      # ----------------------------------------------------------------------------------------------------------
      # `array`, `hstore`, and `jsonb` Column Types
      # ----------------------------------------------------------------------------------------------------------
        # { classes: [] },

      # ----------------------------------------------------------------------------------------------------------
      # Alias Params
      # ----------------------------------------------------------------------------------------------------------
        # :person_type, # serves as the URL param for filtering by PersonType – e.g.: ?person_type=news

      # ----------------------------------------------------------------------------------------------------------
      # Virtual Params
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `has_many` (Virtual & Alias Params)
      # ----------------------------------------------------------------------------------------------------------

      # ----------------------------------------------------------------------------------------------------------
      # `belongs_to`
      # ----------------------------------------------------------------------------------------------------------
        # :person_type_id,
        # :page_status_id,

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
      def self.person_nested_attributes
        { person_attributes: PERMITTED_PARAMS_PERSON }
      end

    # ----------------------------------------------------------------------------------------------------------
    # has_many accepts_nested_attributes_for
    # ----------------------------------------------------------------------------------------------------------
      def self.people_nested_attributes
        { people_attributes: PERMITTED_PARAMS_PERSON }
      end

    # ----------------------------------------------------------------------------------------------------------
    # `has_many :through`
    # ----------------------------------------------------------------------------------------------------------
      def self.person_ids
        { person_ids: [] }
      end
  end
end

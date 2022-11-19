# == Schema Information
#
# Table name: characteristic_groups
#
#  created_at :datetime         not null
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  slug       :string
#  title      :string(255)
#  updated_at :datetime         not null
#
# Indexes
#
#  index_characteristic_groups_on_slug  (slug) UNIQUE
#
class CharacteristicGroup < ApplicationRecord
  # Constants
  # ==========================================================================================================
    TEST_SPECIFICATIONS = CharacteristicGroup.find_by(slug: 'test-specifications').id
    SPECIMEN_REQUIREMENTS = CharacteristicGroup.find_by(slug: 'specimen-requirements').id
    TEST_DETAILS = CharacteristicGroup.find_by(slug: 'test-details').id
    LOINC_CODES = CharacteristicGroup.find_by(slug: 'loinc-codes').id

  # Extensions
  # ==========================================================================================================
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

  # Concerns / Includes / Presenters
  # ==========================================================================================================
    include Presenters::NameifyPresenter

  # Alias Attributes
  # ==========================================================================================================

  # Virtual Attributes
  # ==========================================================================================================

  # belongs_to: [MODEL] (Polymorphic)
  # ==========================================================================================================

  # belongs_to: [MODEL]
  # ==========================================================================================================

  # has_one: [MODEL] (Polymorphic)
  # ==========================================================================================================

  # has_one: [MODEL]
  # ==========================================================================================================

  # has_many: [MODELS] (Polymorphic)
  # ==========================================================================================================

  # has_many: Characteristics > Tests
  # ==========================================================================================================
    has_many  :characteristics,
              inverse_of: :characteristic_group

    has_many  :tests,
              through: :characteristics,
              inverse_of: :characteristics

  # Scopes
  # ==========================================================================================================

  # Filter Scopes
  # ==========================================================================================================

  # Callbacks
  # ==========================================================================================================

  # Validations
  # ==========================================================================================================
    validates :name,
              presence: true,
              uniqueness: true

  # Custom Validations
  # ==========================================================================================================

  # **********************************************************************************************************
  # -------------------------------------------- PUBLIC METHODS ----------------------------------------------
  # **********************************************************************************************************

  # Public Custom Callback Methods
  # ==========================================================================================================

  # Public Custom Validation Methods
  # ==========================================================================================================

  # Public Instance Methods
  # ==========================================================================================================

  # Public Class Methods
  # ==========================================================================================================

  # **********************************************************************************************************
  # ------------------------------------------- PROTECTED METHODS --------------------------------------------
  # **********************************************************************************************************
    protected

  # Protected Custom Callback Methods
  # ==========================================================================================================

  # Protected Custom Validation Methods
  # ==========================================================================================================

  # Protected Instance Methods
  # ==========================================================================================================
    def slug_candidates
      attribute_candidates = []
      attribute_candidates.push(name)

      # return
      [
        attribute_candidates
      ]
    end

  # Protected Class Methods
  # ==========================================================================================================

  # **********************************************************************************************************
  # -------------------------------------------- PRIVATE METHODS ---------------------------------------------
  # **********************************************************************************************************
    private

  # Private Custom Callback Methods
  # ==========================================================================================================

  # Private Custom Validation Methods
  # ==========================================================================================================

  # Private Instance Methods
  # ==========================================================================================================

  # Private Class Methods
  # ==========================================================================================================
end

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)      not null
#  bio        :text
#  slug       :string
#
# Indexes
#
#  index_people_on_slug  (slug) UNIQUE
#
class Person < ApplicationRecord
  # Constants
  # ==========================================================================================================

  # Extensions
  # ==========================================================================================================
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

  # Concerns / Includes / Presenters
  # ==========================================================================================================

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

  # has_many: ArticleAuthors > Articles
  # ==========================================================================================================
    has_many  :article_authors,
              foreign_key: :author_id,
              inverse_of: :author

    has_many  :articles,
              through: :article_authors,
              inverse_of: :article_authors

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
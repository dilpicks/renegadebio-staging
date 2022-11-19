# == Schema Information
#
# Table name: article_authors
#
#  article_id :bigint
#  author_id  :bigint
#  created_at :datetime         not null
#  id         :bigint           not null, primary key
#  updated_at :datetime         not null
#
# Indexes
#
#  index_article_authors_on_article_id                (article_id)
#  index_article_authors_on_article_id_and_author_id  (article_id,author_id) UNIQUE
#  index_article_authors_on_author_id                 (author_id)
#
# ActiveRecord::Base.connection.execute("TRUNCATE TABLE article_authors RESTART IDENTITY")
class ArticleAuthor < ApplicationRecord
# Constants
  # ==========================================================================================================

  # Extensions
  # ==========================================================================================================
    # extend FriendlyId
    # friendly_id :slug_candidates, use: :slugged

  # Concerns / Includes / Presenters
  # ==========================================================================================================

  # Alias Attributes
  # ==========================================================================================================

  # Virtual Attributes
  # ==========================================================================================================

  # belongs_to: [MODEL] (Polymorphic)
  # ==========================================================================================================

  # belongs_to: Article
  # ==========================================================================================================
    belongs_to  :article,
                inverse_of: :article_authors

  # belongs_to: Person (as Author)
  # ==========================================================================================================
    belongs_to  :author,
                class_name: 'Person',
                inverse_of: :article_authors

  # has_one: [MODEL] (Polymorphic)
  # ==========================================================================================================

  # has_one: [MODEL]
  # ==========================================================================================================

  # has_many: [MODELS] (Polymorphic)
  # ==========================================================================================================

  # has_many: [MODELS]
  # ==========================================================================================================

  # Scopes
  # ==========================================================================================================

  # Filter Scopes
  # ==========================================================================================================

  # Callbacks
  # ==========================================================================================================

  # Validations
  # ==========================================================================================================
    validates :article,
              presence: true

    validates :author,
              presence: true,
              uniqueness: {
                scope: [
                  :article
                ]
              }

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
    # def slug_candidates
    #   attribute_candidates = []
    #   attribute_candidates.push(name)

    #   # return
    #   [
    #     attribute_candidates
    #   ]
    # end

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


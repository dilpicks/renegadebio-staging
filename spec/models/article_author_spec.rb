# == Schema Information
#
# Table name: article_authors
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint
#  article_id :bigint
#
# Indexes
#
#  index_article_authors_on_article_id                (article_id)
#  index_article_authors_on_article_id_and_author_id  (article_id,author_id) UNIQUE
#  index_article_authors_on_author_id                 (author_id)
#
require 'rails_helper'

RSpec.describe ArticleAuthor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

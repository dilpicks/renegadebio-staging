# == Schema Information
#
# Table name: articles
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  title            :string(255)      not null
#  link             :text
#  source           :string(255)
#  classes          :string           default([]), is an Array
#  page_status_id   :bigint           not null
#  slug             :string
#  article_type_id  :bigint           not null
#  published_at     :datetime
#  featured         :boolean          default(TRUE), not null
#  summary          :text
#  subtitle         :string(255)
#  meta_title       :string(255)
#  meta_description :text
#  location         :text
#
# Indexes
#
#  index_articles_on_article_type_id  (article_type_id)
#  index_articles_on_page_status_id   (page_status_id)
#  index_articles_on_slug             (slug) UNIQUE
#  index_articles_on_title            (title) UNIQUE
#
require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

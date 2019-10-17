class ProductArticle < ApplicationRecord
  belongs_to :product

  serialize :related_articles_ids, Array
end

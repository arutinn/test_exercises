class AddRelatedArticlesIdsToProductArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :product_articles, :related_articles_ids, :text
  end
end

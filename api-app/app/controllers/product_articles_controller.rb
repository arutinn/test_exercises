class ProductArticlesController < ApplicationController

  def create
    product_article = ProductArticle.find_by_sku(product_articles_params[:article_sku])
    product_articles_ids = product_article.related_articles_ids
    related_articles_ids.each{ |id| product_articles_ids << id unless product_articles_ids.include?(id) }
    product_article.save
  end

  private

  def product_articles_params
    params.permit!
  end

  def related_articles_ids
    ProductArticle.where(sku: product_articles_params[:related_sku]).ids
  end
end

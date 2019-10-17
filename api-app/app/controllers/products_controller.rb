class ProductsController < ApplicationController
  def create
    Product.create(product_attributes)
  end

  private

  def populate_params
    params.permit(:url, :product_sku, :product_name, :article_sku, :article_name, :price, photos: [:url], sizes: [:size_sku, :name, :available])
  end

  def product_attributes
    {
      name: populate_params[:product_name], sku: populate_params[:product_sku],
      product_article_attributes: product_article_attributes,
      product_sizes_attributes: product_sizes_attributes,
      product_photos_attributes: product_photos_attributes
    }
  end

  def product_article_attributes
    {
      name: params[:article_name], sku: params[:article_sku], url: params[:url], price: params[:price]
    }
  end

  def product_sizes_attributes
    populate_params[:sizes].map do |size|
      {
        sku: size[:size_sku], available: size[:available], size: Size.find_or_create_by(name: size[:name])
      }
    end
  end

  def product_photos_attributes
    populate_params[:photos]
  end
end

class CreateProductArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :product_articles do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.string :url
      t.string :sku
      t.integer :price

      t.timestamps
    end
  end
end

class CreateProductPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :product_prices do |t|
      t.integer :product_id
      t.integer :price_id
      t.string :price_name

      t.timestamps
    end
  end
end

class CreatePricePartials < ActiveRecord::Migration[5.2]
  def change
    create_table :price_partials do |t|
      t.string :name
      t.boolean :adjustable
      t.text :standard_text
      t.boolean :active
      t.timestamps
    end
  end
end

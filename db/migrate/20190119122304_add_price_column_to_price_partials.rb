class AddPriceColumnToPricePartials < ActiveRecord::Migration[5.2]
  def change
    add_column :price_partials, :price, :float
  end
end

class AddUnitToPricePartial < ActiveRecord::Migration[5.2]
  def change
    add_column :price_partials, :unit, :integer
  end
end

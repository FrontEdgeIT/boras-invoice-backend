class ChangePricePartialsUnitsToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :price_partials, :unit, :integer
    add_column :price_partials, :unit, :string
  end
end

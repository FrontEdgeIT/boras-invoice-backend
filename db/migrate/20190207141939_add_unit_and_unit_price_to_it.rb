class AddUnitAndUnitPriceToIt < ActiveRecord::Migration[5.2]
  def change
    add_column :invoice_items, :unit_price, :float
    add_column :invoice_items, :unit, :string
    add_column :invoice_items, :vat, :float
  end
end

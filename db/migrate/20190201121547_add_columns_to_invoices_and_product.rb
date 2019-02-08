class AddColumnsToInvoicesAndProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :invoice_sent, :boolean, :default => false
    add_column :invoices, :plant_id, :string
    add_column :invoices, :plant_number, :string
    add_column :products, :price_partials, :integer, array:true, default: []
  end  
end

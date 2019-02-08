class AddProductIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :product_id, :integer
  end
end

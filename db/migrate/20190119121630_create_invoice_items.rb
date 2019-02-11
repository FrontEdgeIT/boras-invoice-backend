class CreateInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_items do |t|
      t.integer :invoice_id
      t.integer :price_partial_id
      t.string :amount
      t.float :total_price
      t.text :item_text

      t.timestamps
    end
  end
end

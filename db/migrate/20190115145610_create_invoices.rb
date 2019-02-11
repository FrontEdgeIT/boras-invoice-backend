class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :implementation_date
      t.integer :customer_id
      t.string :reference
      t.integer :issuer_id
      t.boolean :billed
      t.integer :work_order
      t.integer :project

      t.timestamps
    end
  end
end

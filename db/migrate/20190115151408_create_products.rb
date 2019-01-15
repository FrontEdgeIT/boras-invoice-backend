class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :business_area
      t.string :name
      t.string :invoice_type
      t.string :account
      t.boolean :vat
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :department
      t.string :org_number
      t.string :personal_number
      t.string :address
      t.integer :postal_number
      t.string :city
      t.boolean :active

      t.timestamps
    end
  end
end

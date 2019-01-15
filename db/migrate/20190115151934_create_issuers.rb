class CreateIssuers < ActiveRecord::Migration[5.2]
  def change
    create_table :issuers do |t|
      t.string :name
      t.string :business_area
      t.string :unit
      t.string :phone_number
      t.string :email
      t.boolean :active

      t.timestamps
    end
  end
end

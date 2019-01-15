class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :price_partial_id
      t.date :from_date
      t.date :to_date
      t.float :price

      t.timestamps
    end
  end
end

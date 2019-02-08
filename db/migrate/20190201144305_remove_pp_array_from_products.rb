class RemovePpArrayFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price_partials, :integer, array:true, default: []
  end
end

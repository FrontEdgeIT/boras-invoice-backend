class ChangeWorkOrderAndProjectColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :work_order, :integer
    remove_column :invoices, :project, :integer
    add_column :invoices, :work_order, :string
    add_column :invoices, :project, :string
  end
end

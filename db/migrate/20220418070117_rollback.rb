class Rollback < ActiveRecord::Migration[7.0]
  def change
    rename_column :cashiers, :cashier_name, :name
  end
end

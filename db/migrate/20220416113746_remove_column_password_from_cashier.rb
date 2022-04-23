class RemoveColumnPasswordFromCashier < ActiveRecord::Migration[7.0]
  def change
    remove_column :cashiers, :password
  end
end

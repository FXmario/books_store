class AddIndexToCashierUsername < ActiveRecord::Migration[7.0]
  def change
    add_index :cashiers, :username, unique: true
  end
end

class AddTotalToSale < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :total, :bigint
  end
end

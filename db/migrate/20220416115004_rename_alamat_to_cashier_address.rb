class RenameAlamatToCashierAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :cashiers, :alamat, :cashier_address
  end
end

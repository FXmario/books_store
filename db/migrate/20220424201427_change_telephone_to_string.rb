class ChangeTelephoneToString < ActiveRecord::Migration[7.0]
  def change
    change_column :distributors, :telephone, :string
  end
end

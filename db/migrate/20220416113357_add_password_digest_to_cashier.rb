class AddPasswordDigestToCashier < ActiveRecord::Migration[7.0]
  def change
    add_column :cashiers, :password_digest, :string
  end
end

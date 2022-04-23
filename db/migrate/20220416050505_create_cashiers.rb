class CreateCashiers < ActiveRecord::Migration[7.0]
  def change
    create_table :cashiers do |t|
      t.string :name
      t.string :alamat
      t.integer :phone
      t.string :status
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end

class CreateSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :supplies do |t|
      t.references :book, null: false, foreign_key: true
      t.references :distributor, null: false, foreign_key: true
      t.integer :amount
      t.date :date

      t.timestamps
    end
  end
end

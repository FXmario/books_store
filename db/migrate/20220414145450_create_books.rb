class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :noisbn
      t.string :writer
      t.text :description
      t.string :publisher
      t.integer :year
      t.integer :stock
      t.integer :price
      t.integer :selling_price
      t.float :ppn
      t.float :discount

      t.timestamps
    end
  end
end

class CreateDistributors < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
      t.string :distributor_name
      t.string :address
      t.integer :telephone

      t.timestamps
    end
  end
end

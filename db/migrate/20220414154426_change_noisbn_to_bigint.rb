class ChangeNoisbnToBigint < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :noisbn, :bigint
  end
end

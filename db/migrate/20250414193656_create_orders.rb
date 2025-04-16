class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :place
      t.integer :diameter
      t.integer :depth

      t.timestamps
    end
  end
end

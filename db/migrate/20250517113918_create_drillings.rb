class CreateDrillings < ActiveRecord::Migration[8.0]
  def change
    create_table :drillings do |t|
      t.integer :year
      t.string :place
      t.string :name
      t.string :type
      t.integer :amount
      t.integer :drilled_depth

      t.timestamps
    end
  end
end

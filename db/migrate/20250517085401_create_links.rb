class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end

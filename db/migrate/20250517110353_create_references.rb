class CreateReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :references do |t|
      t.integer :year
      t.text :project_description
      t.string :project_type

      t.timestamps
    end
  end
end

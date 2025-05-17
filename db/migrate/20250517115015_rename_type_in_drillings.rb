class RenameTypeInDrillings < ActiveRecord::Migration[8.0]
  def change
    rename_column :drillings, :type, :drilling_type
  end
end

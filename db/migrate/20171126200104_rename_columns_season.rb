class RenameColumnsSeason < ActiveRecord::Migration[5.0]
  def change
    remove_index :seasons, :serie_id
    remove_column :seasons, :serie_id

    rename_column :seasons, :nome, :name
    rename_column :seasons, :numero, :number
  end
end

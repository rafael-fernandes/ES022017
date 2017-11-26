class RenameColumnsEpisode < ActiveRecord::Migration[5.0]
  def change
    remove_index :episodes, :temporada_id
    remove_column :episodes, :temporada_id

    rename_column :episodes, :nome, :name
    rename_column :episodes, :numero, :number
    rename_column :episodes, :data_lancamento, :release_date
  end
end

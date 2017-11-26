class RenameTables < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :temporadas, :seasons
    rename_table :episodios, :episodes
  end

  def self.down
    rename_table :seasons, :temporadas
    rename_table :episodes, :episodios
  end
end

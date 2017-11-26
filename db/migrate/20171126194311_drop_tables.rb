class DropTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :serie_acompanhadas
  end
end

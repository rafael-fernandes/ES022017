class CreateEpisodios < ActiveRecord::Migration[5.0]
  def change
    create_table :episodios do |t|
      t.string :nome
      t.integer :numero
      t.date :data_lancamento
      t.references :temporada

      t.timestamps
    end
  end
end

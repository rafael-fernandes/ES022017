class CreateTemporadas < ActiveRecord::Migration[5.0]
  def change
    create_table :temporadas do |t|
      t.references :serie
      t.string :nome
      t.integer :numero

      t.timestamps
    end
  end
end

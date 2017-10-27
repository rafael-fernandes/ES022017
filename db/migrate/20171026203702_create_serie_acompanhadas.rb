class CreateSerieAcompanhadas < ActiveRecord::Migration[5.0]
  def change
    create_table :serie_acompanhadas do |t|
      t.references :user
      t.integer :status
      t.integer :progressao
      t.references :serie

      t.timestamps
    end
  end
end

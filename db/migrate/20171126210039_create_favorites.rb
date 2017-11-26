class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :series_list, foreign_key: true
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end

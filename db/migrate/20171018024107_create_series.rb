class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :title
      t.text :description
      t.string :year

      t.timestamps
    end
  end
end

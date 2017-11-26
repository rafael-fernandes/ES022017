class CreateSeriesLists < ActiveRecord::Migration[5.0]
  def change
    create_table :series_lists do |t|
      t.timestamps
    end
  end
end

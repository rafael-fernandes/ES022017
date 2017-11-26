class AddSeriesRefToSeason < ActiveRecord::Migration[5.0]
  def change
    add_reference :seasons, :series, foreign_key: true
  end
end

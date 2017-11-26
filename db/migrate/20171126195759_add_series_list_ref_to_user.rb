class AddSeriesListRefToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :series_list, foreign_key: true
  end
end

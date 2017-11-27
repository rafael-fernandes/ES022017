class AddImagePathToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :image_path, :string
  end
end

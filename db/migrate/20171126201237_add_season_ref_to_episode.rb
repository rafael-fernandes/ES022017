class AddSeasonRefToEpisode < ActiveRecord::Migration[5.0]
  def change
    add_reference :episodes, :season, foreign_key: true
  end
end

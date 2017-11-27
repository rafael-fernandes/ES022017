class AddEpisodeSeasonToEpisode < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :episode_season, :string
    add_column :episodes, :summary, :text
  end
end

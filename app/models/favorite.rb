class Favorite < ApplicationRecord
  belongs_to :series_list
  belongs_to :series
end

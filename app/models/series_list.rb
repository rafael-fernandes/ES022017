class SeriesList < ApplicationRecord
  has_one :user
  has_many :favorites
  has_many :series, through: :favorites
end

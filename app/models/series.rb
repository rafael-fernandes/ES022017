class Series < ApplicationRecord
  has_many :seasons  

  validates :title, presence: true
  validates :description, presence: true
  validates :year, presence: true
end

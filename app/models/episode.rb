class Episode < ApplicationRecord
  belongs_to :season

  validates :name, presence: true
  validates :number, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :release_date, presence: true
  validates :summary, presence: true
end

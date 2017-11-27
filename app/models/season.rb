class Season < ApplicationRecord
  belongs_to :series
  has_many :episodes

  validates :name, presence: true
  validates :number, presence: true, numericality: { greater_than_or_equal_to: 1 }
end

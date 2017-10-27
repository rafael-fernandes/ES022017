class Serie < ApplicationRecord
  has_many :serie_acompanhadas
  has_many :users, through: :serie_acompanhadas, source: :user
end

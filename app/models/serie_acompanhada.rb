class SerieAcompanhada < ApplicationRecord
  belongs_to :serie
  belongs_to :user
end

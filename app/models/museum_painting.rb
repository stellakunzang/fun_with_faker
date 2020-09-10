class MuseumPainting < ApplicationRecord
  belongs_to :museum
  belongs_to :painting
end

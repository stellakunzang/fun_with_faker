class Artist < ApplicationRecord
  has_many :paintings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year, presence: true
  validates :location, presence: true
end

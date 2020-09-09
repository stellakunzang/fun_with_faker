class Museum < ApplicationRecord
  has_many :museum_paintings
  has_many :paintings, through: :museum_paintings
  validates :name, presence: true
  validates :address, presence: true
  validates :slogan, presence: true
end

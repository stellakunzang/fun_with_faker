class Painting < ApplicationRecord
  belongs_to :artist
  has_many :museum_paintings
  has_many :museums, through: :museum_paintings
  validates :name, presence: true
  validates :description, presence: true
  validates :medium, presence: true
  validates :color_palette, presence: true
  validates :image, presence: true
end

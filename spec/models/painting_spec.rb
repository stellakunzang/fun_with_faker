require 'rails_helper'

describe Painting, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :medium }
    it { should validate_presence_of :color_palette }
    it { should validate_presence_of :image }
  end

  describe 'relationships' do
    it { should belong_to :artist }
    it { should have_many :museum_paintings }
    it { should have_many(:museums).through(:museum_paintings)}
  end
end

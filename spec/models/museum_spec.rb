require 'rails_helper'

describe Museum, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
    it { should validate_presence_of :slogan }
  end

  describe 'relationships' do
    it { should have_many :museum_paintings }
    it { should have_many(:paintings).through(:museum_paintings)}
  end
end

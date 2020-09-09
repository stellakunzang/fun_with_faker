require 'rails_helper'

describe Artist, type: :model do
  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :year }
    it { should validate_presence_of :location }
  end

  describe 'relationships' do
    it { should have_many :paintings }
  end
end

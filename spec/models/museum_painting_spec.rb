require 'rails_helper'

describe MuseumPainting, type: :model do
  describe 'relationships' do
    it { should belong_to :painting }
    it { should belong_to :museum }
  end
end

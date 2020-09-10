require "rails_helper"

RSpec.describe "artist show page" do
  before(:each) do
    @artist1 = Artist.create!(first_name: "Salvador", last_name: "Dali", year: "1904", location: "Spain")
    @painting1 = @artist1.paintings.create!(name: "The Persistence of Memory", description: "Hard objects become inexplicably limp in this bleak and infinite dreamscape, while metal attracts ants like rotting flesh.", medium: "oil on canvas", color_palette: "Natural", image: "https://www.moma.org/media/W1siZiIsIjM4NjQ3MCJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=4c0635a9ee70d63e")
  end

  it "should display artist info" do

    visit "/artists/#{@artist1.id}"

    expect(page).to have_content(@artist1.first_name)
    expect(page).to have_content(@artist1.last_name)
    expect(page).to have_content(@artist1.year)
    expect(page).to have_content(@artist1.location)
  end

  it "should display artist's paintings" do

    visit "/artists/#{@artist1.id}"

    expect(page).to have_content(@painting1.name)
    expect(page).to have_content(@painting2.description)
  end
end

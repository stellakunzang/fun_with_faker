require "rails_helper"

RSpec.describe "museum index page" do
  before(:each) do
    @artist1 = Artist.create!(first_name: "Salvador", last_name: "Dali", year: "1904", location: "Spain")
    @painting1 = @artist1.paintings.create!(name: "The Persistence of Memory", description: "Hard objects become inexplicably limp in this bleak and infinite dreamscape, while metal attracts ants like rotting flesh.", medium: "oil on canvas", color_palette: "Natural", image: "https://www.moma.org/media/W1siZiIsIjM4NjQ3MCJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=4c0635a9ee70d63e")
    @museum1 = Museum.create!(name: "MOMA", address: "11 W 53rd St, New York, NY 10019", slogan: "we celebrate creativity, openness, tolerance, and generosity.")
    MuseumPainting.create!(museum_id: "#{@museum1.id}", painting_id: "#{@painting1.id}")

    @artist2 = Artist.create!(first_name: "Gustav", last_name: "Klimt", year: "1862", location: "Austrian")
    @painting2 = @artist2.paintings.create!(name: "The Kiss", description: "Gustav Klimt depicts the couple locked in an intimate embrace against a gold, flat background. The two figures are situated at the edge of a patch of flowery meadow that ends under the woman's exposed feet. The man wears a robe printed with geometric patterns and subtle swirls.", medium: "oil and gold leaf on canvas", color_palette: "GOLD", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg/1024px-The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg")
    @museum2 = Museum.create!(name: "Austian Gallery Belvedere", address: "Vienna, Austria", slogan: "Unter dem Motto „draußen sein“")
    MuseumPainting.create!(museum_id: "#{@museum2.id}", painting_id: "#{@painting2.id}")
  end

  it "should display all museums" do

    visit "/museums"

    expect(page).to have_content(@museum1.name)
    expect(page).to have_content(@museum2.name)
  end

  it "should display paintings at museums" do

    visit "/museums"

    expect(page).to have_content(@painting1.name)
    expect(page).to have_content(@painting2.name)
  end
end

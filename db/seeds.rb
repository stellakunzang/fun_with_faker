# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@artist1 = Artist.create!(first_name: "Salvador", last_name: "Dali", year: "1904", location: "Spain")
@painting1 = @artist1.paintings.create!(name: "The Persistence of Memory", description: "Hard objects become inexplicably limp in this bleak and infinite dreamscape, while metal attracts ants like rotting flesh.", medium: "oil on canvas", color_palette: "Natural", image: "https://www.moma.org/media/W1siZiIsIjM4NjQ3MCJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=4c0635a9ee70d63e")
@museum1 = Museum.create!(name: "MOMA", address: "11 W 53rd St, New York, NY 10019", slogan: "we celebrate creativity, openness, tolerance, and generosity.")
MuseumPainting.create!(museum_id: "#{@museum1.id}", painting_id: "#{@painting1.id}")

@artist2 = Artist.create!(first_name: "Gustav", last_name: "Klimt", year: "1862", location: "Austrian")
@painting2 = @artist2.paintings.create!(name: "The Kiss", description: "Gustav Klimt depicts the couple locked in an intimate embrace against a gold, flat background. The two figures are situated at the edge of a patch of flowery meadow that ends under the woman's exposed feet. The man wears a robe printed with geometric patterns and subtle swirls.", medium: "oil and gold leaf on canvas", color_palette: "GOLD", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg/1024px-The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg")
@museum2 = Museum.create!(name: "Austian Gallery Belvedere", address: "Vienna, Austria", slogan: "Unter dem Motto „draußen sein“")
MuseumPainting.create!(museum_id: "#{@museum2.id}", painting_id: "#{@painting2.id}")

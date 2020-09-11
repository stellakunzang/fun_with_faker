FactoryBot.define do
  factory :painting do
    association :artist
     name { Faker::Movies::Lebowski.character }
     description { Faker::Books::Dune.saying }
     medium { Faker::Games::Zelda.item }
     color_palette { Faker::Color.color_name }
     image { Faker::Fillmurray.image }

     after :create do |painting|
       museum = create(:museum)
       create :museum_painting, painting: painting, museum: museum
     end
  end
end

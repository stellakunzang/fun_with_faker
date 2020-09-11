FactoryBot.define do
  factory :artist do
    first_name { Faker::Creature::Animal.name }
    last_name { Faker::Games::Myst.character }
    year { Faker::Number.number(digits: 4) }
    location { Faker::Movies::Hobbit.location }
  end
end

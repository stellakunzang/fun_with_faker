FactoryBot.define do
  factory :museum do
    name { Faker::FunnyName.four_word_name }
    address { Faker::Address.street_address }
    slogan { Faker::Kpop.girl_groups }
  end
end

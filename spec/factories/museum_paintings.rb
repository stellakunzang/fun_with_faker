FactoryBot.define do
  factory :museum_painting do
    association :museum
    association :painting 
  end
end

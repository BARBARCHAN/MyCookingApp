FactoryBot.define do
  factory :recipe do
    name        {Faker::Name.initials(number: 2)}
    material    {Faker::Lorem.sentence}
    howto1      {Faker::Lorem.sentence}
    howto2      {Faker::Lorem.sentence}
    howto3      {Faker::Lorem.sentence}
    association :user 
  end
end
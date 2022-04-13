FactoryBot.define do
  factory :contact do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    birthdate { Faker::Date.birthday(min_age: 18, max_age: 65) }
    user 
  end
end
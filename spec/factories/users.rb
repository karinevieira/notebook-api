FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Internet.name }
    uid { email }
    password { '12345678' }
    password_confirmation { password }
  end
end
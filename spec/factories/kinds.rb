FactoryBot.define do
  factory :kind do
    description { ['friend', 'family', 'commercial'].sample }
  end
end
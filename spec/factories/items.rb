# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    association :list
    description { Faker::Lorem.sentence }
    completed false
    priority {Faker::Number.between(1, 5)}
  end
end

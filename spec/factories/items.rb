# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    association :list
    description { Faker::Lorem.sentence }
    completed false
  end
end

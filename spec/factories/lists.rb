# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    association :user
    name { Faker::Lorem.sentence }
    permission 'public'
  end 
end

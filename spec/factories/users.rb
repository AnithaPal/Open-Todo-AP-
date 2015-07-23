# Read about factories at https://github.com/thoughtbot/factory_girl

# FactoryGirl.define do
#   factory :user do
#     username {Faker::Name.name}
#     email { Faker::Internet.email }
#     password {Faker::Lorem.characters(8).password)}
#   end
# end
FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.email }
    password {Faker::Lorem.characters(8)}
  end 
end
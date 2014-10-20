FactoryGirl.define do
  factory :user do
    name         Faker::Name.name
    email        Faker::Internet.email
    phone_number Faker::PhoneNumber.phone_number
    age          { rand(1..80) }
  end
end
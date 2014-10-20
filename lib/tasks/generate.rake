task generate: :environment do
  10.times do
    User.create(name: Faker::Name.name, 
                email: Faker::Internet.email, 
                phone_number: '3103772609',
                age: 21)
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating users...'
until User.count == 10 do
    User.create(
        email: Faker::Internet.email,
        password: '123456',
        password_confirmation: '123456',
        name: Faker::Name.name,
        position: Faker::Lorem.sentence(word_count: 3),
        role: rand(0..1)
    )
end

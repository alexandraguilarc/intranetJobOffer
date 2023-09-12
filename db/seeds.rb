# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating users...'
i = 0
until User.count == 10 do
    User.create(
        email: "test#{i}@gmail", 
        password: "123456",
        password_confirmation: "123456",
        name: Faker::Name.name,
        position: Faker::Lorem.sentence(word_count: 3),
        role: rand(0..1)
    )

    i += 1
end


puts 'Creating joboffers...'
until Joboffer.count == 10 do
    Joboffer.create(
        position: Faker::Book.title, 
        description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false),
        departament: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false),
        when_went: Faker::Date.between(from: 10.years.ago, to: Date.today),
        user_id: rand(0..9)
    )
end

puts 'Creating Postulations...'
    until Postulation.count == 10 do
        Postulation.create(
            message: Faker::Lorem.paragraph_by_chars(number: 200,supplemental: false), 
            joboffer_id: rand(0..9),
            user_id: rand(0..9)
        )
    end
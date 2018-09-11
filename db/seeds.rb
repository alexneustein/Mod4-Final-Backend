# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Topic.create(name: 'FamilyGuy', description: Faker::FamilyGuy.quote)
Topic.create(name: 'Hobbit', description: Faker::Hobbit.quote)
Topic.create(name: 'HowIMetYourMother', description: Faker::HowIMetYourMother.quote)
Topic.create(name: 'StarWars', description: Faker::StarWars.quote)
Topic.create(name: 'GameOfThrones', description: Faker::GameOfThrones.quote)

10.times do
  Prompt.create(name: Faker::FamilyGuy.unique.character, topic_id: 1)
end

10.times do
  Prompt.create(name: Faker::Hobbit.unique.character, topic_id: 2)
end

10.times do
  Prompt.create(name: Faker::HowIMetYourMother.unique.character, topic_id: 3)
end

10.times do
  Prompt.create(name: Faker::StarWars.unique.character, topic_id: 4)
end

10.times do
  Prompt.create(name: Faker::GameOfThrones.unique.character, topic_id: 5)
end

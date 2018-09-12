# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Topic.create(name: 'Gods', description: 'How many do YOU know?')
Topic.create(name: 'Pokemon', description: "Gotta guess 'em all")
Topic.create(name: 'Tolkein', description: 'From Middle Earth and the tale of the Ring')
Topic.create(name: 'StarWars', description: 'How well do YOU know the galaxy far far away....')
Topic.create(name: 'Music', description: "Jamin' with the greats")

30.times do
  randnum = Random.new.rand(1...3)
  if randnum == 1
    Prompt.create(name: Faker::Ancient.unique.god, topic_id: 1)
  elsif randnum == 2
    Prompt.create(name: Faker::Ancient.unique.titan, topic_id: 1)
  elsif randnum == 3
    Prompt.create(name: Faker::Ancient.unique.hero, topic_id: 1)
  # elsif randnum == 4
  #   Prompt.create(name: Faker::Ancient.unique.primordial, topic_id: 1)
  end
end

50.times do
  Prompt.create(name: Faker::Pokemon.name, topic_id: 2)
end

50.times do
  randnum = Random.new.rand(1...2)
  if randnum == 1
    Prompt.create(name: Faker::LordOfTheRings.unique.character, topic_id: 3)
  elsif randnum == 2
    Prompt.create(name: Faker::Hobbit.unique.character, topic_id: 3)
  # elsif randnum == 3
  #   Prompt.create(name: Faker::LordOfTheRings.unique.location, topic_id: 3)
  # elsif randnum == 4
  #   Prompt.create(name: Faker::Hobbit.unique.location, topic_id: 3)
  end
end

50.times do
  randnum = Random.new.rand(1...2)
if randnum == 1
  Prompt.create(name: Faker::StarWars.unique.character, topic_id: 4)
elsif randnum == 2
    Prompt.create(name: Faker::StarWars.unique.planet, topic_id: 4)
# elsif randnum == 3
#     Prompt.create(name: Faker::StarWars.unique.droid, topic_id: 4)
end
end

50.times do
  randnum = Random.new.rand(1...2)
  if randnum == 1
    Prompt.create(name: Faker::Music.unique.band, topic_id: 5)
  # elsif randnum == 2
  #   Prompt.create(name: Faker::Music.unique.album, topic_id: 5)
  elsif randnum == 2
    Prompt.create(name: Faker::Music.unique.instrument, topic_id: 5)
  end

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

topics = [
  ["Job Seeking", "Are you looking for a job? Or are you hiring?"],
  ["Tech Newbies", "Tech 101"],
  ["Workplace Woes", "Touchy subjects and a place to voice concerns"],
  ["Moving up the Ladder", "How to advance in the field" ],
  ["Benefits", "Make sure you're not being screwed over"],
  ["Project Meetups", "Got an idea? Let's meet up!"]
]

topics.each do |topic_info|
  name, description = topic_info
  Topic.find_or_create_by!(name: name, description: description)
end

30.times do
  Post.create(title: Faker::Hipster.sentence, body: Faker::Lovecraft.paragraph, username: Faker::LordOfTheRings.character, topic_id: rand(1..6))
end

80.times do
  Comment.create(username: Faker::Pokemon.name, body: Faker::HarryPotter.quote, post_id: rand(1..30))
end

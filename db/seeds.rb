require 'faker'
puts "🌱 Seeding data..."



15.times do
  Project.create(name: Faker::Lorem.sentence(word_count: 3), status: "In Progress")
end


puts "🌱 Done seeding!"

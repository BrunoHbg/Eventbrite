require 'faker'

puts '***** Je nettoie les DB'
Event.destroy_all
Attendance.destroy_all
User.destroy_all

# seed user
puts '-> Je charge un jeu d\'essai User'
30.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Name.first_name + "#{rand(9999)}@yopmail.com", #Faker::Internet.email,
    password: 'password'
  )
end
puts 'Jeu d\'essai User avec 10 items'

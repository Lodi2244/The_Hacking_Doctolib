# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  city = City.create!(city_name: Faker::Address.city)
end

10.times do
   Doc.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, specialty: Faker::GameOfThrones.house, zip_code: Faker::Number.number(5), city_id: rand(1..10))
end

10.times do
   Patient.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, city_id: rand(1..10))
end

10.times do |index|
  index += 1
  Appointment.create!(date: Faker::Date.forward(40), patient_id:"#{index}", doc_id: "#{index}", city_id: rand(1..10))
end

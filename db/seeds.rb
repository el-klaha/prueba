# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

# Crear Usuarios

50.times do
  user = User.new(
    rut:        Faker::Number.number(10),
    nombre:     Faker::Name.name,
    apellido:   Faker::Name.last_name,
    email:      Faker::Internet.email,
    nacimiento: Faker::Date.between(30.years.ago, 20.years.ago),
    password:   Faker::Lorem.characters(10),
    avatar:     Faker::Avatar.image("my-own-slug", "200x200")
  )
  user.save!
end
users = User.all
puts "#{users.count} usuarios creados"
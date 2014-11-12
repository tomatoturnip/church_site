# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# clear out main tables
["users", "events"].each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
  ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH 1")
end

# clear out join tables

# Users
puts "Seeding users..."
  User.create(email: "foo@bar.com", password: "password", password_confirmation: "password", first_name: "Foo", last_name: "Bar")
  User.create(email: "hello@world.com", password: "password", password_confirmation: "password", first_name: "Hello", last_name: "World")

puts "Users seeded."

# Events
puts "Seeding events..."
  Event.create(name: 'Jerry', email: 'jerry@junior.com', title: 'nursery', description: 'bring snacks', start_time: '2014-11-12 19:39:00 UTC', end_time: '2014-11-12 19:39:00 UTC')
  Event.create(name: 'Sarah', email: 'sarah@junior.com', title: 'first graders', description: nil, start_time: '2014-11-14 06:32:00 UTC', end_time: '2014-11-14 06:32:00 UTC')
puts "Events seeded."


puts "Done seeding."

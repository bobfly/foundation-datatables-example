# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

employees = [
  Employee.new(first_name: "John", last_name: "Doe", date_of_birth: Date.today - 25.years, city: "New York"),
  Employee.new(first_name: "Bob", last_name: "Fly", date_of_birth: Date.today - 30.years, city: "New York"),
  Employee.new(first_name: "Bart", last_name: "Simpson", date_of_birth: Date.today - 35.years, city: "Springfield"),
  Employee.new(first_name: "Just", last_name: "Example", date_of_birth: Date.today - 45.years, city: "Los Angeles")
]

employees.each do |e|
  Employee.create(first_name: e.first_name, last_name: e.last_name, date_of_birth: e.date_of_birth, city: e.city)
end

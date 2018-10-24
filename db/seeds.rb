# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  course = Course.create!(title: Faker::Beer.style)
end
15.times do
  cour = Course.offset(rand(Course.count)).first
  student = Student.create!(name: Faker::Space.meteorite, course: cour)
end
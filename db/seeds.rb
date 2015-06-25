# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Teacher.create(name: "Test", email: "test@test.com", password: "password")
Student.create(name: "Student", email: "student@student.com", password: "password", teacher_id: 1)
Parent.create(name: "Parent", email: "parent@parent.com", password: "password", student_id: 1)
5.times {Grade.create!(assignment_id: rand(1..5), score: rand(70..100), student_id: 1)}

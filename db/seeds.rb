# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


teacher = Teacher.create!(name: "Test Teacher", email: "test@teacher.com", password: "test")
student = Student.create!(teacher_id: teacher.id, name: "Bobby Tables", email: "test@student.com", password: "test")
parent = Parent.create!(student_id: student.id, name: "Susan Tables", email: "test@parent.com", password: "test")
assignment = Assignment.create!(name: "Test Test", due: Date.today)
grade = Grade.create!(student_id: student.id, assignment_id: assignment.id, score: 100)

5.times do
  Teacher.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "test")
end

t_ids = Teacher.all.map {|t| t.id}

50.times do
  Student.create!(teacher_id: t_ids.sample, name: Faker::Name.name, email: Faker::Internet.email, password: "test")
end

s_ids = Student.all.map {|s| s.id}

100.times do
  Parent.create!(student_id: s_ids.sample, name: Faker::Name.name, email: Faker::Internet.email, password: "test")
end

counter = 1
20.times do
  Assignment.create!(name: "Assignment #{counter}", due: Faker::Date.between(2.months.ago, Date.today))
  counter += 1
end

a_ids = Assignment.all.map {|a| a.id}

500.times do
  Grade.create!(student_id: s_ids.sample, assignment_id: a_ids.sample,
      score: Faker::Number.number(2))
end

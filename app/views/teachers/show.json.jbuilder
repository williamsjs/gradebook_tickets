json.extract! @teacher, :id, :name, :email
json.students @teacher.students do |student|
  json.student student.name
  json.id student.id
end

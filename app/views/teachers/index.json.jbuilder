json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :email
  json.url teacher_url(teacher, format: :json)
  json.students teacher.students do |student|
    json.student student.name
    json.id student.id
  end
end

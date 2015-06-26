json.array!(@students) do |student|
  json.extract! student, :id, :name, :email
  json.teacher student.teacher.name
  json.url student_url(student, format: :json)
  json.grades student.grades do |grade|
    json.assignment grade.assignment.name
    json.assignment_id grade.assignment.id
    json.score grade.score
  end
end

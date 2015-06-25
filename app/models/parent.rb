class Parent < ActiveRecord::Base
  belongs_to :student
  has_secure_password

  def find_grades(email)
    @parent = Parent.find_by_email(email)
    @student = Student.find_by_id(@parent.student_id)
    @grades = @student.grades
    return @parent.name
  end
end

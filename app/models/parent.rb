class Parent < ActiveRecord::Base
  belongs_to :student
  has_secure_password

def find_grades
  @parent = Parent.find_by_email(email: params[:email])
  @student = Student.find_by_id(id: @parent.student_id)
  @grades = @student.grades
end
end

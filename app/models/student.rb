class Student < ActiveRecord::Base
  has_many :grades
  has_many :parents
  belongs_to :teacher
  has_secure_password

  def get_grade(id)
    grades.find_by_assignment_id(id).score
  end
end

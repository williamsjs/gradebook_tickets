class Assignment < ActiveRecord::Base
  has_many :grades
  belongs_to :teacher
  accepts_nested_attributes_for :grades

  def average
    students = Student.where(teacher_id: self.teacher.id).count
    self.grades.sum(:score)/students
  end
end

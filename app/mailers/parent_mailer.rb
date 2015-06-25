class ParentMailer < ApplicationMailer
  def weekly_email(email)
    @parent = Parent.find_by_email(email)
    @student = Student.find_by_id(@parent.student_id)
    @grades = @student.grades
    # parents = Parent.all
    # parents.each do |p|
    #   p.find_grades(p.email)
    mail(to: "#{ENV["GMAIL_USERNAME"]}@gmail.com", subject: "Your child's weekly progress!")
  # end
  end
end

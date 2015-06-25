class ParentMailer < ApplicationMailer
  def weekly_email
    parents = Parent.all
    parents.each do |p|
      p.find_grades(p.email)
      mail(to: p.email, subject: "Your child's weekly progress!")
    end
  end
end

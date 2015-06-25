class Parent < ActiveRecord::Base
  belongs_to :student
  has_secure_password

  def send_email
    # parents = Parent.all
    self.each {|p| p.email}
  end
end

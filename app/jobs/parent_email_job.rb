class ParentEmailJob < ActiveJob::Base
  queue_as :default

  def perform
    parents = Parent.all
    parents.each do |p|
      ParentMailer.weekly_email(p.email).deliver_now
    end
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: "weeklymailer@donotreply.com"
  layout 'mailer'
end

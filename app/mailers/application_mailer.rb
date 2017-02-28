class ApplicationMailer < ActionMailer::Base
  default from: "tickets@#{ENV['MAILGUN_DOMAIN']}"
end

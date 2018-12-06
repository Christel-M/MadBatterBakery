require "action_mailer"

ActionMailer::Base.view_paths= File.dirname(__FILE__)
ActionMailer::Base.smtp_settings = {
  address:          "smtp.gmail.com",
  port:             "587",
  user_name:        ENV['EMAIL_USERNAME'],
  password:         ENV['EMAIL_PASSWORD'],
  authentication: :plain
}

class Newsletter < ActionMailer::Base
  default from: "christel.floresm@gmail.com"

  def welcome(name, recipient)
    @name = name
    @recipient = recipient
    mail(to: recipient,
         # subject: "[Signed up] Welcome #{name}")
         subject: "Welcome #{name}")
  end
end

Newsletter.welcome("Christel", "chriss0307@gmail.com").deliver_now

#You need a folder whose name matches the name of the class inheriting from
#actionmailer_base

#in that folder
#you need at least 2 files: (function).html.erb AND (function).text.erb

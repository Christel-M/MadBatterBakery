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
  default from: ENV['EMAIL_USERNAME']

  def welcome(name, recipient)
    @name = name
    @recipient = recipient
    mail(to: recipient,
         subject: "Hi #{name}, Here\'s the Mad Batter 2018 Catalog!")
  end

end

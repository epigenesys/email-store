class DummyMailer < ApplicationMailer

  def send_email(to_address, subject)
    mail to: to_address, subject: subject
  end

end

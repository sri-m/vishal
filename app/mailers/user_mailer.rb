class UserMailer < ActionMailer::Base
  default from: "srinivaspkl@gmail.com"

  def my_mail(registration)
  	@registration = registration
  	mail(:to => "srinivaspkl@gmail.com", :subject => "I will contact you")
  end
end

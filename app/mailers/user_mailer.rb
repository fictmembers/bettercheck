class UserMailer < ApplicationMailer
  default from: "i-mozgolom@ukr.net"
 
  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site', :user => user)
  end
end

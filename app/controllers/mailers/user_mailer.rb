class UserMailer < ActionMailer::Base
    default :from => "no-reply@jungle.com"

 def order_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration Confirmation")
 end
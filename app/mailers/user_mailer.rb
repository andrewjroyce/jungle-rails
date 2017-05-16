class UserMailer < ActionMailer::Base
    default :from => "no-reply@jungle.com"

 def order_confirmation(email)

    mail(to: email, subject: "Order Confirmation")
 end
end
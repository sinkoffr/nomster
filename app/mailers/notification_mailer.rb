class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomsterapp.com"
    
    def comment_added
       mail(to: "Rebecca.Sinkoff@gmail.com",
            subject: "A comment has been added to your Place") 
    end
end

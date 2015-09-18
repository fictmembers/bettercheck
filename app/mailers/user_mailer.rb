class UserMailer < ApplicationMailer
	def registration_confirmation(user)
		recipients  user.email
		from	    "i-mozgolom@ukr.net"
		subject 	"Thank you for Registring!"
		body 		:user => user
	end
end

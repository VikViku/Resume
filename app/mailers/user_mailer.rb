class UserMailer < ApplicationMailer
	default from: 's.vikvik@gmail.com'

	def contact_me(contact)
	@name = contact.name
	@email  = contact.email
	@text = contact.text
	mail(to: 's.vikvik@gmail.com', subject: 'Welcome to My Awesome Site')
 	end
end

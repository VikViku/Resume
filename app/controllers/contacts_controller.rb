class ContactsController < ApplicationController
	invisible_captcha only: [:create, :update], honeypot: :subtitles


	def new
		@contact = Contact.new
	end

	def create
		# binding.pry
		@contact = Contact.new(msg_params)
		if verify_recaptcha(model: @contact) && @contact.save
			UserMailer.contact_me(@contact).deliver
			redirect_to root_path, :notice => "Your message is sent successfully!"
    	else
			redirect_to root_path(anchor: 'sec_contact'), :notice => "Something went wrong!"
		end
	end

private
	def msg_params
		params.require(:contact).permit(:name, :email, :text)
	end

end
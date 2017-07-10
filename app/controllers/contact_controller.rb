class ContactController < ApplicationController


	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(user_params)
		if @user.save
		else
			render 'new'
	    end
	end

private
	def user_params
		params.require(:user).permit(:name, :email, :text)
	end

end
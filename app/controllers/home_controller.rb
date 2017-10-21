

class HomeController < ApplicationController


	def index
		@contact = Contact.new
		users = User.all.count
		if users == 0
			render plain: 'No user, no site. :( Grįšim vėliau.'
		else
			@owner = User.where(isOwner: true).limit(1).first
			@experiences = Experience.where(user_id: @owner.id)
			@educations = Education.where(user_id: @owner.id)
			@workshops = Workshop.where(user_id: @owner.id)
			@languages = Language.where(user_id: @owner.id)
			@skills = Skill.where(user_id: @owner.id)
			@interests = Interest.where(user_id: @owner.id)
		end
	end

	def change_locale
	    l = params[:locale].to_s.strip.to_sym
	    l = I18n.default_locale unless I18n.available_locales.include?(l)
	    cookies.permanent[:my_locale] = l
	    # binding.pry
	    redirect_to request.referer || root_url
	end
end

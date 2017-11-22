class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale


	def after_sign_out_path_for(resource)
	  thredded_path #your path
	end

	def after_sign_in_path_for(resource)
	  thredded_path #your path
	end

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options = {})
		{locale: I18n.locale}
	end


end

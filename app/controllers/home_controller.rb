class HomeController < ApplicationController

	def index
		@owner = User.where(isOwner: true).limit(1).first
		# @experiences = Experience.where(id: @owner.id)
		# # @educations = Education.where(id: @owner.id)
		@experiences = Experience.all
		@educations = Education.all
		@workshops = Workshop.where(id: @owner.id)
		@languages = Language.where(id: @owner.id)
		# @skills = Skill.where(id: @owner.id)
		@skills = Skill.all
		@interests = Interest.where(id: @owner.id)
	end

end

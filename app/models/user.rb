class User < ApplicationRecord
	has_many :experience, dependent: :destroy

	has_many :education, dependent: :destroy

	has_many :workshop, dependent: :destroy
	
	has_many :language, dependent: :destroy
	
	has_many :skill, dependent: :destroy
	
	has_many :interest, dependent: :destroy
	
	validates :first_name, presence: true

	validates :last_name, presence: true

	validates :title, presence: true

	validates :desc, presence: true
end

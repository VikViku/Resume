class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	        :recoverable, :rememberable, :trackable, :validatable
	dragonfly_accessor :avatar


	has_many :experience, dependent: :destroy

	has_many :education, dependent: :destroy

	has_many :workshop, dependent: :destroy
		
	has_many :language, dependent: :destroy
		
	has_many :skill, dependent: :destroy
		
	has_many :interest, dependent: :destroy
		
	# validates :first_name, presence: true
	validates :username, presence: true
	# validates :birthday, presence: true
	# validates :city, presence: true

	validates_property :format, of: :avatar, in: ['jpeg', 'png', 'gif']

	validates_property :width, of: :avatar, in: (0..150), message: "Avataras turi būti 150x150px dydžio!"

	def email_changed?
    	false
	end

end

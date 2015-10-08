class User < ActiveRecord::Base
	has_secure_password
	has_many :bootcamp_reviews
	has_many :instructor_reviews
	belongs_to :bootcamp

	validates :email, :username, :password_digest, presence: true, length: { minimum: 3 }
	validates :email, :username, uniqueness: true
	validates :password, length: { in: 3..10 }

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

end

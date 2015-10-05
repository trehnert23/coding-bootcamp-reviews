class User < ActiveRecord::Base
	has_secure_password
	has_many :bootcamp_reviews
	has_many :instructor_reviews
	belongs_to :bootcamp

end

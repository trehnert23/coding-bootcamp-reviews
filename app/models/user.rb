class User < ActiveRecord::Base
	has_secure_password
	has_many :reviews
	belongs_to :bootcamp

end

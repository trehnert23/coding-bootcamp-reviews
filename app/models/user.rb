class User < ActiveRecord::Base
	has_secure_password
	has_many :reviews
	belongs_to :bootcamp

	validates :email, :username, :password_digest, presence: true, length: { minimum: 3 }
	validates :email, :username, uniqueness: true
	validates :password_digest, length: { in: 3..10 }

end
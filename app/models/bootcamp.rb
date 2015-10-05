class Bootcamp < ActiveRecord::Base
	has_many :instructors
	has_many :reviews
	has_many :users
end

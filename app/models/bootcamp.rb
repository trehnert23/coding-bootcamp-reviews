class Bootcamp < ActiveRecord::Base
	has_many :instructors
	has_many :bootcamp_reviews
	has_many :users
end

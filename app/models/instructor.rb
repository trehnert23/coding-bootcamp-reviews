class Instructor < ActiveRecord::Base

	has_many :instructor_reviews
	belongs_to :bootcamp

end

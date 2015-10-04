class Review < ActiveRecord::Base

	belongs_to :bootcamp
	belongs_to :instructor
	belongs_to :user

end

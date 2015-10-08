class BootcampReview < ActiveRecord::Base
	belongs_to :bootcamp
	belongs_to :user

	def self.top_six
		order(created_at: :desc).limit(6)
	end

end

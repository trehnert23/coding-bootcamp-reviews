class Instructor < ActiveRecord::Base

	has_many :instructor_reviews
	belongs_to :bootcamp

	# def self.search(search)
	#   if search
	#     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	#   else
	#     find(:all)
	#   end
	# end
	
end

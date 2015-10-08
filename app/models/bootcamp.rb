class Bootcamp < ActiveRecord::Base
	has_many :instructors
	has_many :bootcamp_reviews
	has_many :users

	attr_reader :employedAvg, :notEmployedAvg, :stillAttendingAvg,
				:notSeekingAvg, :noAvg, :yesAvg, :locationAvg, 
				:jobhelpAvg, :campusAvg, :overall, :overallAvg,
				:locationTotal, :jobhelpTotal, :campusTotal, :worthYesTotal,
				:worthNoTotal, :employedTotal, :notEmployedTotal,
				:stillAttendingTotal, :notSeekingTotal

	after_find :calculate_review_averages

	private

	def calculate_review_averages
		calculate_review_totals
		@review_count = bootcamp_reviews.count
		@employedAvg = @employedTotal/@review_count.round(2)
		@notEmployedAvg = @notEmployedTotal/@review_count.round(2)
		@stillAttendingAvg = @stillAttendingTotal/@review_count.round(2)
		@notSeekingAvg = @notSeekingTotal/@review_count.round(2)
		@noAvg = @worthNoTotal/@review_count.round(2)
		@yesAvg = @worthYesTotal/@review_count.round(2)
		@locationAvg = @locationTotal/@review_count
		@jobhelpAvg = @jobhelpTotal/@review_count
		@campusAvg = @campusTotal/@review_count
		@overall = @locationAvg + @jobhelpAvg + @campusAvg
		@overallAvg = @overall / 3
	end

	def calculate_review_totals
		@locationTotal = 0
		@jobhelpTotal = 0
		@campusTotal = 0
		@worthYesTotal = 0
		@worthNoTotal = 0
		@employedTotal = 0
		@notEmployedTotal = 0
		@stillAttendingTotal = 0
		@notSeekingTotal = 0

		bootcamp_reviews.each do |review|
		  @locationTotal = @locationTotal + review.location
		  @jobhelpTotal = @jobhelpTotal + review.jobhelp
		  @campusTotal = @campusTotal + review.campus
		  if review.worthit == "Yes"
		    @worthYesTotal = @worthYesTotal + 1
		  else
		    @worthNoTotal = @worthNoTotal + 1
		  end
		  if review.hired == "Employed"
		    @employedTotal = @employedTotal + 1
		  elsif review.hired == "Not Employed"
		    @notEmployedTotal = @notEmployedTotal + 1
		  elsif review.hired == "Still Attending"
		    @stillAttendingTotal = @stillAttendingTotal + 1
		  elsif review.hired == "Not Seeking Employment"
		    @notSeekingTotal = @notSeekingTotal + 1
		  end
		end
	end
end
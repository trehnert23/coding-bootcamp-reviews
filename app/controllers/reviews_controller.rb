class ReviewsController < ApplicationController

  def index
  	@bootcamp_reviews = BootcampReview.all
  	render json: @bootcamp_reviews
  end

  def new
  	@bootcamp_review = BootcampReview.new
  	@instructor_review = InstructorReview.new
  end

  def create
  	#make checks in front end before even submitting
  	# binding.pry
  	bcId = params[:bootcamp_id]
  	
  	bcContent = params.require(:bootcamp_review).require(:"0").permit(:value)[:value]
  	bcReviewInfo = {content: bcContent}
  	bcReview = BootcampReview.create(bcReviewInfo)

  	instructorContent = params.require(:instructor_review).require(:"0").permit(:value)[:value]
  	instructorReviewInfo = {content: instructorContent}
  	instructorReview = InstructorReview.create(instructorReviewInfo)

  	
	render text: "/bootcamps/#{bcId}"
  	
  end
end

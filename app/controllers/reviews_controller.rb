class ReviewsController < ApplicationController

  def index
  	@bootcamp_reviews = BootcampReviews.all
  	render json: @bootcamp_reviews
  end

  def new
  	@bootcamp_review = BootcampReview.new
  	@instructor_review = InstructorReview.new
  end

  def create
  	binding.pry
  	bcContent = params.require(:bootcamp_review).require(:"0").permit(:value)
  	bootcampReviewInfo = {}
  	bootcampReviewInfo.content = bcContent

  	BootcampReview.create(bcContent)
  	redirect_to bootcamp_reviews_path
  end
end

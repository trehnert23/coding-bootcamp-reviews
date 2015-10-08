class BootcampReviewsController < ApplicationController

  def index

    bootcampId = params[:id]
    @bootcamp = Bootcamp.find_by_id(bootcampId)
    @reviews = @bootcamp.bootcamp_reviews

  end

  def show



    # @trunc_reviews = @reviews.map do |review|
    #   trunc_review = {
    #     created_at: review.created_at,
    #     jobhelp: review.jobhelp,
    #     location: review.location, 
    #     worthit: review.worthit,
    #     hired: review.hired,
    #     content: review.content
    #   }
    #   if review.content.length > 200
    #     trunc_review.content = trunc_review.content.truncate(200)
        
    #     return trunc_review
    #     else
    #       return trunc_review
    #   end
    # end
    # binding.pry
  end

  def edit
    id = params[:id]
    @bootcamp_review = BootcampReview.find_by_id(id)
  end

  def update
    # binding.pry
    reviewId = params[:id]
    review = BootcampReview.find_by_id(reviewId)
    userId = review.user_id

    updated_attributes = params.permit(:content, :hired, :worthit, :campus, :jobhelp, :location)
    review.update_attributes(updated_attributes)
    review.save

    render text: "/users/#{userId}/"
  end

      
      # user = BootcampReview.find_by_id(reviewId)
      

  def destroy
  end

end

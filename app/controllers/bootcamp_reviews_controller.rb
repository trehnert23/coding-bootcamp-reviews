class BootcampReviewsController < ApplicationController

  def index
    @bootcamp_reviews = BootcampReview.all
    render json: @bootcamp_reviews
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

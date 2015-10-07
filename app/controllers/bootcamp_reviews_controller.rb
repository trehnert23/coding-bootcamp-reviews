class BootcampReviewsController < ApplicationController

  def index
    @bootcamp_reviews = BootcampReview.all
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

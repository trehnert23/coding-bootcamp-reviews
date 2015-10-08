class BootcampReviewsController < ApplicationController

  def index

    bootcampId = params[:id]
    @bootcamp = Bootcamp.find_by_id(bootcampId)
    @reviews = @bootcamp.bootcamp_reviews
  end

  def show

  end

  def edit
    id = params[:id]
    @bootcamp_review = BootcampReview.find_by_id(id)
  end

  def update
  end

  def destroy
  end
end

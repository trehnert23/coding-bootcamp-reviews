class BootcampsController < ApplicationController
  def index
  end

  def search
  end

  def new
  end

  def create
  end


  def show
    @bootcamp = Bootcamp.find_by_id(params[:id])
    @bootcampReviews = BootcampReview.order(created_at: :desc).limit(6)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

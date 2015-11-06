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
    @user = User.new
    get_bootcamp
    get_reviews
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_bootcamp
    @bootcamp = Bootcamp.find_by_id(params[:id])
  end

  def get_reviews
    @bootcampReviews = BootcampReview.top_six
  end

end

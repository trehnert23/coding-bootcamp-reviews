class BootcampsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @bootcamp = Bootcamp.find(params[:id]) 
    @bootcamp_user = User.find_by_id(Bootcamp.first.bootcamp_reviews.last.user_id).username
    @i = 0
    @reviewsLength = @bootcamp.bootcamp_reviews.length - 1

    render :show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class BootcampsController < ApplicationController
  def index
    if params[:search]
      @articles = Bootcamp.search(params[:search]).order("created_at DESC")
    else
      @articles = Bootcamp.order("created_at DESC")
    end
  end

  def new
  end

  def create
  end

  def show
    @bootcamp = Bootcamp.find_by_id(params[:id])
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

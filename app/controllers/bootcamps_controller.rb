class BootcampsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  # GET /bootcamps/:id
  def show
    @bootcamp = Bootcamp.find params[:id]
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

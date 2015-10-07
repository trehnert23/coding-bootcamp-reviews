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
    @bootcamp = Bootcamp.find_by({id: params[:id]})
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

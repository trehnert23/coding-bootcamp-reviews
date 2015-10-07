class BootcampsController < ApplicationController
  def index
  end

  def search
  end

  def new
  end

  def create
  end

  # GET /bootcamps/:id
  def show
<<<<<<< HEAD
    @bootcamp = Bootcamp.find_by({id: params[:id]})
=======
    @bootcamp = Bootcamp.find params[:id]
>>>>>>> 70ea4d65d9fa65f42a08920c3d92b1e0450bb2e8
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

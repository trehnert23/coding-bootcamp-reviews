class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.search(params[:search])
  end

  def new
  end

  def create
  end

  def show
    @instructor = instructors.find(params[:id])
      if current_instructor == @instructor
        render :show
      else
        redirect_to "/instructors/new"
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    userParams = params.require(:user).permit(:username, :email, :password)
    @user = User.new userParams
    if @user.save
      redirect_to root_path
    else
      console.log("you done fucked up")
      redirect_to root_path
    end
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

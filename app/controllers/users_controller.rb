class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    userParams = params.require(:user).permit(:username, :email, :password)
    @user = User.new userParams
    if @user.save
      login(@user)
      redirect_to root_path
    else
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

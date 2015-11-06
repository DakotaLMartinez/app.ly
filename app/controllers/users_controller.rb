class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Registration successful! Welcome to App.ly!"
      log_in @user
      redirect_to user_path @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password)
    end
end

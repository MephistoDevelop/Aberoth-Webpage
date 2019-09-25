class UsersController < ApplicationController
  def index
  end

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]="Welcome User: #{@user.name}"
    else
      render 'new'
    end
  end

  def destroy
  end

  def show
    @user =User.all
  end

  private
  def user_params
    params.require(:user).permit(:name,:lastname,:email,:age,:password,:password_confirmation)

  end
end

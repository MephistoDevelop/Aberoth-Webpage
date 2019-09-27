class UsersController < ApplicationController
  def index
    @user = User.find_by(params[:email])
  end

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]="Welcome User: #{@user.name}"
      render 'new'
    else
      render 'new'
    end
  end
  def update

  end
  def destroy
  end

  def show
    @user =User.find_by(params[:user_id])
  end

  private
  def user_params
    params.require(:user).permit(:name,:lastname,:email,:age,:password,:password_confirmation)

  end
end

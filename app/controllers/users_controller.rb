class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name,:lastname,:email,:age,:password,:password_confirmation)

  end
end

# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @user = if logged_in?
              User.find_by(id: cookies.signed[:user_id])
            else
              User.new
            end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Felicidades ! #{@user.name}, ahora puedes ingresar !"
      redirect_to login_path
    else
      render 'new'
    end
  end

  def update; end

  def destroy; end

  def show
    @user = if logged_in?
              User.find_by(params[:user_id])
            else
              User.new
            end
  end

  private

  def user_params
    params.require(:user).permit(:name, :lastname, :email, :age, :password, :password_confirmation)
  end
end

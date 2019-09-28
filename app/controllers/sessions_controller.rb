# frozen_string_literal: true

class SessionsController < ApplicationController
  include ::SessionsHelper
  def new
    # user = User.find(1)
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user &.authenticate(params[:session][:password])
      log_in(user)
      remember(user)
      redirect_to users_path(user)
    else
      flash.now[:danger] = 'Ingresa un Email y Contraseña registrados !'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

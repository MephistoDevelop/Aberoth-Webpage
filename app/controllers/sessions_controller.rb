class SessionsController < ApplicationController
  include ::SessionsHelper
  def new
    user =User.find(1)
  end

  def create
    user=User.find_by(email: params[:session][:email].downcase)
    if user &.authenticate(params[:session][:password])
      log_in(user)
      remember(user)
      redirect_to users_path(user)
    else
      flash[:danger]="Necesitas Registrarte para ver contenido"
    render 'new'
    end
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

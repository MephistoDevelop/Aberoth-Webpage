class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(email:params[:session][:email].downcase)
    if user
      redirect_to users_path
    else
      flash[:danger]="Necesitas Registrarte para ver contenido"
      redirect_to login_path
    end
  end
  def destroy
  end
end

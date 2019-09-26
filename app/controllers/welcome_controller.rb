class WelcomeController < ApplicationController
  include SessionsHelper
  def index
    @user =User.find_by(params[:email])
  end
end

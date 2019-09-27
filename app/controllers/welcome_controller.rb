class WelcomeController < ApplicationController
  include SessionsHelper
  def index
    @user =User.find_by(id: cookies.signed[:user_id])
  end
end

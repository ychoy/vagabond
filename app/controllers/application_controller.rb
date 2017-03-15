class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
  include CitiesHelper

  def authorize
    redirect_to login_path unless current_user
  end

end

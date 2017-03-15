module UsersHelper

  def authorize_user
    redirect_to root_path unless current_user == @user
  end

end

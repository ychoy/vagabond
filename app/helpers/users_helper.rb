module UsersHelper

  def authorize_user
    redirect_to root_path unless current_user == @user
  end

  def assign_privileges
    if user_params[:email].include?("levagabond")
      user_params[:privilege_level] = 1
    else
      user_params[:privilege_level] = 0
    end
  end

end

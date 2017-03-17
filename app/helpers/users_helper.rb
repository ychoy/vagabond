module UsersHelper

  def authorize_user
    redirect_to root_path unless current_user == @user
  end

  def assign_privilege
    if user_params[:email].include?("levagabond")
      user_params[:admin] = true
    else
      user_params
    end
  end

end

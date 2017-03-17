module UsersHelper

  def authorize_user
    redirect_to root_path unless current_user == @user
  end

  def assign_privilege
    if user_params[:email].include?("@levagabond.com")
      @user = User.create(user_params)
      @user.toggle!(:admin)
      Rails.logger.info(@user.errors.inspect)
      login(@user)
      redirect_to user_path(@user)
    else
      @user = User.create(user_params)
      Rails.logger.info(@user.errors.inspect)
      login(@user)
      redirect_to user_path(@user)
    end
  end

  def is_admin?
    if logged_in?
      current_user[:admin]
    end
  end

end

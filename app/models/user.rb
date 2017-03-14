class User < ApplicationRecord
  has_secure_password

  has_many :user_tip, dependent: :destroy
  has_many :tips, through: :user_tip

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end

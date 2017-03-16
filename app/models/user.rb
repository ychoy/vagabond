class User < ApplicationRecord
  has_secure_password

  has_many :tips, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  validates :email,
    presence: true,
    uniqueness: true,
    length: {maximum: 250},
    format: {
      with: /@/,
      message: "not a valid format"
    }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

  def author?(tip)
    tip.users.include?(self)   #equivalent to: tip.author?(self)
  end

end

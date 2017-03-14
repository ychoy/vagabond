class Tip < ApplicationRecord
  has_many :user_tip, dependent: :destroy
  has_many :users, through: :user_tip

end

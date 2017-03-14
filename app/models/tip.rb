class Tip < ApplicationRecord
  has_many :user_tip, dependent: :destroy
  has_many :users, through: :user_tip

  validates :title, presence: true, length: { maximum:50 }
  validates :body, presence: true, length: { maximum: 2500 } 

  def author?(user)
    user.tips.include?(self)
  end

end

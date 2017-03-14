class Tip < ApplicationRecord
  belongs_to :user, optional: true 
  default_scope -> { order(created_at: :desc) }


  validates :title, presence: true, length: { maximum:50 }
  validates :body, presence: true, length: { maximum: 2500 }

  def author?(user)
    user.tips.include?(self)
  end

end

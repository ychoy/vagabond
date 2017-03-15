class Tip < ApplicationRecord

  belongs_to :user
  belongs_to :city, optional: true


  validates :title, presence: true, length: { maximum: 200 }, allow_nil: false
  validates :body, presence: true, length: { maximum: 3000 }, allow_nil: false

  def author?(user)
    user.tips.include?(self)
  end

end

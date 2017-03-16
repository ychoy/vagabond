class Tip < ApplicationRecord

  belongs_to :user
  belongs_to :city, optional: true
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true, length: { in: 1..200, message: " must be between 1 and 200 characters" }, allow_nil: false
  validates :body, presence: true, length: { maximum: 3000, message: " content cannot be blank. share some hints!" }, allow_nil: false

  def author?(user)
    user.tips.include?(self)
  end

end

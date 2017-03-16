class Comment < ApplicationRecord
  belongs_to :tip
  belongs_to :user
  validates :content, presence: true, length: { in: 1..200,  message: "Comment cannot be blank. Share your thoughts!"}, allow_nil: false
end

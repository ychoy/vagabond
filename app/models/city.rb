class City < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :photo, presence: true
end

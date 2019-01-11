class Micropost < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end

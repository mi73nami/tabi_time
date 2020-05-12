class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  belongs_to :category
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  mount_uploader :image, ImageUploader
end

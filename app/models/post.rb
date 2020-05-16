class Post < ApplicationRecord
  validates :title, :text, :image, :category_id, :place_id, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  belongs_to :category
  belongs_to :place
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  mount_uploader :image, ImageUploader
end

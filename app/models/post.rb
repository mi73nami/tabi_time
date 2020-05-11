class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  
  belongs_to :user
  has_many :comments
  belongs_to :category

  mount_uploader :image, ImageUploader
end

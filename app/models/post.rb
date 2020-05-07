class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  mount_uploader :image, ImageUploader
end

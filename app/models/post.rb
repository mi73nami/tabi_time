class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  
  belongs_to :user
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  mount_uploader :image, ImageUploader
end

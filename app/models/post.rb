class Post < ApplicationRecord
  validates :title, :text, :image, presence: true
  
  belongs_to :user
  belongs_to :category
end

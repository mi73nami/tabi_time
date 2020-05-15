class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname, presence: true
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  # フォロー機能アソシエーション
  # 自分がフォローしている人
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  # 自分をフォローしている人（フォロワー）
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user

  # フォローしようとしているユーザーが自分自身ではない時に実行可能
  # フォローしていなかった場合はcreateでフォローが可能
  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end
  # フォローしているユーザーのフォローを外す時
  # if relationshipでリレーションが存在している場合にrelationship.destroyを実行
  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end
  # フォローしているUser達を取得し、include?(other_user)によってother_userが含まれていないかを確認
  def following?(other_user)
    self.followings.include?(other_user)
  end

  mount_uploader :image, ImageUploader
end

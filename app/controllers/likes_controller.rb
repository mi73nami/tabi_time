class LikesController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @likes = Like.where(user_id: @user.id).includes(:user)
  end

  def create
    @post = Post.find(params[:post_id])
    like = current_user.likes.create(post_id: params[:post_id])
    like.save
  end

  def destroy
    @post = Post.find(params[:post_id])
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    like.destroy
  end

end

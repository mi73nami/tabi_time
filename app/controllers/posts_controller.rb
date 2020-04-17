class PostsController < ApplicationController
  before_action :set_category
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to post_path(post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image, :money, :address, :category_id).merge(user_id: current_user.id)
  end
end

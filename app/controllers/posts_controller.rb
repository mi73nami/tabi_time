class PostsController < ApplicationController
  before_action :set_category
  def index
    @posts_spot = Post.where(category_id: 1).order(created_at: :desc).limit(2)
    @posts_restaurant = Post.where(category_id: 2).order(created_at: :desc).limit(2)
    @posts_hotel = Post.where(category_id: 3).order(created_at: :desc).limit(2)
    @posts_shop = Post.where(category_id: 4).order(created_at: :desc).limit(2)
    @posts_souvenir = Post.where(category_id: 5).order(created_at: :desc).limit(2)
    @posts_other = Post.where(category_id: 6).order(created_at: :desc).limit(2)
  end

  def new
    @post = Post.new
    @user_id = current_user.id
    @nickname = current_user.nickname
    @user_image = current_user.image
    @user_biography = current_user.biography
  end

  def create
    Post.create(post_params)
    redirect_to root_path 
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @user_id = current_user.id
    @nickname = current_user.nickname
    @user_image = current_user.image
    @user_biography = current_user.biography
  end

  def update
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.update(post_params)
      redirect_to post_path(post.id)
    else
      redirect_to action: "edit"
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      if post.destroy
        redirect_to user_path(current_user.id)
      else
        render :show
      end
    else
      render :show
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image, :money, :address, :category_id).merge(user_id: current_user.id)
  end
end

class PostsController < ApplicationController
  before_action :set_category
  def index
    @posts = Post.includes(:user).order("created_at DESC").limit(10)
  end

  def new
    @post = Post.new
    @user_id = current_user.id
    @nickname = current_user.nickname
    @user_image = current_user.image
    @user_biography = current_user.biography

    @area_array = ["エリアを選択してください"]
    Place.where(ancestry: nil).each do |area|
      @area_array << area.name
    end
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to root_path 
    else
      redirect_to action:"new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
    @user = @post.user
    @places = Place.all
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
      if post.update(post_params)
        redirect_to post_path(post.id)
      else
        redirect_to action: "edit"
      end
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

  def get_countries
    @countries = Place.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_cities
    @cities = Place.find("#{params[:child_id]}").children
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image, :money, :address, :category_id, :place_id).merge(user_id: current_user.id)
  end
end

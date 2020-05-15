class PostsController < ApplicationController
  before_action :set_category, :set_place
  before_action :move_to_index, except: [:index, :show]
  before_action :move_to_index_edit_destroy, only: [:edit, :destroy]
  

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
  end

  def edit
    @post = Post.find(params[:id])
    @user_id = current_user.id
    @nickname = current_user.nickname
    @user_image = current_user.image
    @user_biography = current_user.biography

    city_place = @post.place
    country_place = city_place.parent

    @area_array = []
    Place.where(ancestry: nil).each do |area|
      @area_array << area.name
    end

    @country_array = []
    Place.where(ancestry: country_place.ancestry).each do |country|
      @country_array << country
    end

    @city_array = []
    Place.where(ancestry: city_place.ancestry).each do |city|
      @city_array << city
    end

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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def move_to_index_edit_destroy
    @post = Post.find(params[:id])
    redirect_to post_path(@post.id) unless current_user.id == @post.user_id
  end
end

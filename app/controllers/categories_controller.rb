class CategoriesController < ApplicationController
  before_action :set_category, :set_place
  def show
    @posts = Post.joins(:category).where(category_id: params[:id]).order("created_at DESC")
    @category = Category.find(params[:id])
  end
end

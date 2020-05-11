class CategoriesController < ApplicationController
  before_action :set_category
  def show
    @posts = Post.joins(:category).where(category_id: params[:id])
    @category = Category.find(params[:id])
  end
end

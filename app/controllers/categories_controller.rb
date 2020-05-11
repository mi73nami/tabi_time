class CategoriesController < ApplicationController
  def show
    @posts = Post.joins(:category).where(category_id: params[:id])
    @category = Category.find(params[:id])
  end
end

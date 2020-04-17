class PostsController < ApplicationController
  before_action :set_category
  def index
  end

  def new
    @post = Post.new
  end

  def create
  end
end

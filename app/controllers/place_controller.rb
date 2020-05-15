class PlaceController < ApplicationController
  before_action :set_category, :set_place

  def index
    @areas = Place.where(ancestry: nil) 
  end

  def show
    @posts = Post.joins(:place).where(place_id: params[:id]).order("created_at DESC")
    @places = Place.find(params[:id])
  end
end

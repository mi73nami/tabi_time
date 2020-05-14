class PlaceController < ApplicationController
  before_action :set_category, :set_place
  def show
    @posts = Post.joins(:place).where(place_id: params[:id])
    @places = Place.find(params[:id])
  end
end

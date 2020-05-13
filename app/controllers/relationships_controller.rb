class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    following = current_user.follow(@user)
    if following.save
      redirect_to @user
    else
      redirect_to @user
    end
  end
  
  private
  def
    @user = User.find(params[:relationship][:follow_id])
  end
end

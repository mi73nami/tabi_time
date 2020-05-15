class UsersController < ApplicationController
  before_action :set_category, :set_place
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc) 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      flash[:alert] = '投稿に失敗しました'
      redirect_to action: "edit"
    end
  end
    
  

  private
  
  def user_params
    params.require(:user).permit(:nickname, :image, :biography)
  end
end

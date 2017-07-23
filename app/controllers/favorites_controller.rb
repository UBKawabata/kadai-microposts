class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:favorite_id])
    current_user.favorite(favorite)
    flash[:success] = '投稿をお気に入りに登録しました。'
    redirect_to micropost
  end

  def destroy
    user = User.find(params[:follow_id])
    current_user.unfavorite(favorite)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to micropost
  end
end

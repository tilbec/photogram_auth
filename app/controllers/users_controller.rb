class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
  end

  def show_likes
    @likes = current_user.likes

  end
end

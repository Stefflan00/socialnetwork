class ClipsController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    user = User.friendly.find(params[:user_id])
    @clip = user.photos.friendly.find(params[:clip_id])
  end
end

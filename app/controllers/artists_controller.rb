class ArtistsController < ApplicationController
  before_action :authenticate_user!

  def new
    current_user.artist.destroy if current_user.artist
    @artist = current_user.build_artist
  end
  
  def create
    current_user.artist.destroy if current_user.artist
    @artist = current_user.build_artist(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:bio)
  end
end

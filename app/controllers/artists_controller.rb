class ArtistsController < ApplicationController
  def new
    @artist = current_user.build_artist
  end
  
  def create
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

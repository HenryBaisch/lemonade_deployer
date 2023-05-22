class PagesController < ApplicationController


  def discover
    @posts = Post.order(:date)
    @artists = Artist.all
  end

  def index
    @posts = Post.all
  end
  private
  # Use callbacks to share common setup or constraints between actions.



  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :description, :artist, :genre, :date, :time, :location, :address)
  end
end

class PagesController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]


  def index
    @posts = Post.all
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :description, :artist, :genre, :date, :time, :location, :address)
  end
end

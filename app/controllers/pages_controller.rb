class PagesController < ApplicationController

  def show
  end

  def discover
    @posts = Post.all
    @artists = Artist.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.

end

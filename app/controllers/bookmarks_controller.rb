class BookmarksController < ApplicationController
  before_action :authenticate_user! # assuming you're using Devise for authentication

  def create
    @bookmark = current_user.bookmarks.build(bookmark_params)
    if @bookmark.save
      # success feedback
    else
      # failure feedback
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    # feedback
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:post_id)
  end
end


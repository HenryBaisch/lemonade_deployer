class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = current_user
    @band = @user.band
    @bookmarked_posts = @user.bookmarked_posts
  end

  def my_posts
    @my_posts = current_user.posts
  end
  def bookmark
    @post = Post.find(params[:id])
    if bookmarked?(@post)
      bookmark = bookmarks.where(post: @post).first
      bookmark.destroy
      redirect_to post_url(@post), notice: 'Bookmark was successfully removed.'
    else
      bookmark = bookmarks.create(post: @post)
      redirect_to post_url(@post), notice: 'Bookmark was successfully added.'
    end
  end
  def account
  end

end

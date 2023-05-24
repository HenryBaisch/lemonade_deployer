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
  
  def account
  end

end

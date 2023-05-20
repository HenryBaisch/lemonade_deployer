class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = current_user
  end

  def my_posts
    @my_posts = current_user.posts
  end
  
  def account
  end
end

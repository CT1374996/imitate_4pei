class PostsController < ApplicationController
  before_action :manji, except: :index
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
  end
  
  private
  def post_params
  end
  
  def manji
    redirect_to action: :index unless user_signed_in?
  end
end

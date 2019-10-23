class PostsController < ApplicationController
  def index
    @posts = post.all
  end

  def new
  end

  def create
    post.create(post_params)
  end  
  private
    def post_params
      params.permit(:content) 
end
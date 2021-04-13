class Members::PostsController < ApplicationController
 
 
  def new
    @post = Post.new
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
  
  private
   
  def post_params
    params.require(:post).permit(:member_id, :genre_id, :title, :body, :post_image_id)
  end
end

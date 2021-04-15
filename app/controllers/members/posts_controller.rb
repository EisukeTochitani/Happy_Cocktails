class Members::PostsController < ApplicationController
 
 
  def new
    @post = Post.new
  end
  
   def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      redirect_to posts_path(@post.id)
    else
      render :new
    end
   end


  def index
  end

  def show
  end

  def edit
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

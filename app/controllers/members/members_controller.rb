class Members::MembersController < ApplicationController
     #before_action :ensure_correct_member, only: [:edit, :update]


  def show
    @member = member.find(params[:id])
    @posts = @member.posts
    @post = Post.new
  end

  def edit
    @member = member.find(params[:id])
  end

  def update
    if @member.update(member_params)
      redirect_to my_page_path
      

  end
  
  
end

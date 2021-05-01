class Members::MembersController < ApplicationController
     #before_action :ensure_correct_member, only: [:edit, :update]


  def show
    @member = Member.find(params[:id])
    @posts = @member.posts
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    if @member.update(member_params)
      redirect_to my_page_path
    end

  end


end

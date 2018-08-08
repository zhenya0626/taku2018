class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.username = params[:username]
    @user.student_number = params[:student_number]
    @user.comment = params[:comment]
    if params[:image]
      @user.icon_image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.icon_image_name}",image.read)
    end

    @user.save
    redirect_to("/user/#{@user.id}/show")
  end

end

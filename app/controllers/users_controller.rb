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
    @user.save
    redirect_to("/user/#{@user.id}/show")
  end

end

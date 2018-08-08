class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @current_user = current_user
    if @current_user.location_id == nil
      @current_user.location_id = 1
      @current_user.save
    end
    @users = User.all
    for @user in @users do
      @user.location = Location.find(@user.location_id)
    end
    @location = Location.find(current_user.location_id)
    @location_room = @location.room
  end
end

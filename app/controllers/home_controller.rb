class HomeController < ApplicationController
  def index
    @users = User.all
    for @user in @users do
      @user.location = Location.find(@user.location_id)
    end
    @location = Location.find(current_user.location_id)
    @location_room = @location.room
  end
end

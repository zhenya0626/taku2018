class BuildingsController < ApplicationController
  def show
    @building = Building.find_by(id: params[:id])
    @locations = @building.locations
    @users = User.all
  end

  def enter
    
  end
end

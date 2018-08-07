class BuildingsController < ApplicationController
  before_action :authenticate_user!
  def show
    @building = Building.find_by(id: params[:id])
    @locations = @building.locations
    @users = User.all
  end

  def enter
    @user = current_user
    @user.location_id = params[:location_id]
    @user.save
    redirect_to controller: 'buildings', action: 'show', id: params[:building_id]
  end
end

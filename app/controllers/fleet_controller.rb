class FleetController < ApplicationController
  def create
    fleet = Fleet.create!

    redirect_to fleet_path(fleet)
  end

  def show
    @fleet = Fleet.find(params[:id])
  end
end

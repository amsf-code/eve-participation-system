class FleetController < ApplicationController
  def create
    fleet = Fleet.create!

    redirect_to fleet_path(id: fleet.uuid)
  end

  def show
    @fleet = Fleet.find_by!(uuid: params[:id])
  end
end

class FleetController < ApplicationController
  def create
    @fleet = Fleet.new(fleet_params)
    @fleet.save

    redirect_to fleet_path(@fleet)
  end

  def show
    @fleet = Fleet.find(params[:id])
  end

  private

  def fleet_params
    params.require(:fleet).permit(:fleet_name, :fc_name, :doctrin, :details, :duration)
  end
end

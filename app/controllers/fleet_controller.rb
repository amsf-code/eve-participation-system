class FleetController < ApplicationController
  def create
    fleet = Fleet.new(fleet_params)
    fleet.save

    redirect_to fleet_path(fleet)
  end

  def show
    @fleet = Fleet.find(params[:id])
  end

  def participating?(id)
    Fleet.participations.find_by(eve_charid: @eve_char_info.id).present?
  end

  private

  def fleet_params
    params.require(:fleet).permit(:name, :fc_name, :doctrin, :details, :duration)
  end
end

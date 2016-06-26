# frozen_string_literal: true
class FleetController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
    fleet = Fleet.new(fleet_params)
    fleet.user_id = session[:user_id]

    if fleet.save
      redirect_to fleet_path(fleet)
    else
      flash[:input_missing] = fleet.errors.full_messages.to_sentence
      redirect_to root_path
    end
  end

  def show
    @fleet = Fleet.find(params[:id])
  end

  private

  def fleet_params
    params.require(:fleet).permit(:name, :fc_name, :backup_fcs, :fleet_booster, :doctrin, :details, :started_at, :ended_at)
  end
end

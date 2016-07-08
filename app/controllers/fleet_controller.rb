# frozen_string_literal: true
class FleetController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
    fleet = Fleet.new(fleet_params)
    fleet.user_id = session[:user_id]
    # extracting the eve fleet id from the external fleet link
    fleet.eve_fleet_id = fleet_params[:eve_fleet_id][/\d+/]

    fleet_informations = EveCrest.fleet_members(fleet_params[:eve_fleet_id][/\d+/], session[:user_token])

    if fleet_informations.present?
      fleet.pilot_count = fleet_informations['totalCount']

      fleet_informations['items'].each do |item|
        if item['roleName'].include?('Boss')
          fleet.fc_name = item['character']['name']
          fleet.fc_id = item['character']['id']
        end
      end
    end

    if fleet.save
      redirect_to fleet_path(fleet)
    else
      flash[:input_missing] = fleet.errors.full_messages.to_sentence
      redirect_to new_fleet_path
    end
  end

  def show
    @fleet = Fleet.find(params[:id])
  end

  private

  def fleet_params
    params.require(:fleet).permit(:eve_fleet_id, :name, :doctrin, :reason, :details, :started_at, :ended_at)
  end
end

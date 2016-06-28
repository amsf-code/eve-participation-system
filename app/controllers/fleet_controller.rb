# frozen_string_literal: true
class FleetController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
    eve_fleet_url = params[:fleet][:eve_fleet_id]

    fleet = Fleet.new(fleet_params)
    fleet.user_id = session[:user_id]
    # extracting the eve fleet id from the url and saving into the fleet table
    fleet.eve_fleet_id = eve_fleet_url[/\d+/]

    fleet_informations = EveCrest.fleet_members(eve_fleet_url[/\d+/], session[:user_token])

    if fleet_informations.present?
      fleet.pilot_count = fleet_informations['totalCount_str']

      fleet_informations['items'].each do |item|
        if item['roleName'].include?('Boss')
          fleet.fc_name = item['character']['name']
          fleet.fc_id = item['character']['id_str']
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

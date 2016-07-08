# frozen_string_literal: true
class ParticipationsController < ApplicationController
  before_action :load_fleet

  def show
  end

  def create
    fleet_informations = EveCrest.fleet_members(@fleet.eve_fleet_id, session[:user_token])

    if fleet_informations.present?
      fleet_informations['items'].each do |item|
        participation = Participation.new
        participation.fleet_id = @fleet.id

        participation.character_name = item['character']['name']
        participation.character_id = item['character']['id']

        participation.ship_name = item['ship']['name']
        participation.ship_id = item['ship']['id']

        participation.solarsystem_name = item['solarSystem']['name']
        participation.solarsystem_id = item['solarSystem']['id']

        if item['station'].present?
          participation.station_name = item['station']['name']
          participation.station_id = item['station']['id']
        end

        if item['roleName'].include?('Boss')
          participation.fc = true
        end

        if item['boosterName'] == 'Wing Booster'
          participation.wing_booster = true
        end
        participation.save
      end
    end
    redirect_to user_path(id: session[:user_id])
  end

  private

  def load_fleet
    @fleet = Fleet.find(params[:fleet_id])
  end
end

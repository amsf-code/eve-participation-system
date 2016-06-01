require 'EVEHeaders'
class ParticipationsController < ApplicationController
  before_action :load_fleet, :load_eve_header

  def show
  end

  def new
    @participating = @fleet.participations.find_by(eve_charid: @eve_charid).present?
  end

  def create
    @fleet.participations.find_or_create_by(eve_charid: @eve_charid)

    redirect_to fleet_participation_path(@fleet)
  end

  private

  def load_fleet
    @fleet = Fleet.find(params[:fleet_id])
  end

  def load_eve_header
    eve_headers = EVEHeaders.new(request.headers)
    @eve_charid = eve_headers.eve_charid
    @eve_corpid = eve_headers.eve_corpid
    @eve_shiptypeid = eve_headers.eve_shiptypeid
    @eve_solarsystemid = eve_headers.eve_solarsystemid
  end
end

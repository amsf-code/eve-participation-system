class ParticipationsController < ApplicationController
  before_action :load_fleet, :load_eve_header

  def show
  end

  def new
    @participating = @fleet.participating?(@eve_char_info.id)
    @expired = @fleet.expired?
  end

  def create
    if @fleet.participating?(@eve_char_info.id) || @fleet.expired?
      render :show
    else
      @fleet.participations << Participation.build_from_eve_headers(@eve_char_info)
      redirect_to fleet_participation_path(@fleet)
    end
  end

  private

  def load_fleet
    @fleet = Fleet.find(params[:fleet_id])
  end

  def load_eve_header
    @eve_char_info = EVECharacterInfo.from_ingame_headers(request.headers)
  end
end

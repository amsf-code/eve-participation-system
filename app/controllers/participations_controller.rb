# frozen_string_literal: true
class ParticipationsController < ApplicationController
  before_action :load_fleet

  def show
  end

  def new
    @participating = @fleet.participating?(eve_character_info.id)
    @expired = @fleet.expired?
  end

  def create
    if @fleet.participating?(eve_character_info.id) || @fleet.expired?
      render :show
    else
      @fleet.participations << Participation.build_from_eve_headers(eve_character_info)
      redirect_to fleet_participation_path(@fleet)
    end
  end

  private

  def load_fleet
    @fleet = Fleet.find(params[:fleet_id])
  end
end

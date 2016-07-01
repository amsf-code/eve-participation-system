# frozen_string_literal: true
class CorporationController < ApplicationController
  before_action :load_alliance

  def show
  end

  def create
    alliance_informations = EveCrest.alliance(@alliance.alliance_id)

    alliance_informations['corporations'].each do |corporation_infos|
      corporation = Corporation.new
      corporation.alliance_id = @alliance.id

      corporation.name = corporation_infos['name']
      corporation.corporation_id = corporation_infos['id_str']

      corporation.save
    end
    redirect_to user_path(id: session[:user_id])
  end

  private

  def load_alliance
    @alliance = Alliance.find(params[:alliance_id])
  end
end

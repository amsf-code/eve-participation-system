# frozen_string_literal: true
class AllianceController < ApplicationController
  # load_and_authorize_resource

  def new
  end

  def create
    alliance_name = params[:alliance][:name]

    alliance = Alliance.new(alliance_params)

    alliances_informations = EveCrest.alliances

    input_name = ''

    alliances_informations['items'].each do |item|
      next unless item['name'].eql?(alliance_name)
      input_name = item['name']
      alliance.name = item['name']
      alliance.short_name = item['shortName']
      alliance.alliance_id = item['id_str']
    end

    page_count = alliances_informations['pageCount'] + 1

    page = 2

    until page == page_count || input_name.eql?(alliance_name)
      alliances_informations = EveCrest.alliances_page(page)
      alliances_informations['items'].each do |item|
        next unless item['name'].eql?(alliance_name)
        input_name = item['name']
        alliance.name = item['name']
        alliance.short_name = item['shortName']
        alliance.alliance_id = item['id_str']
      end
      page += 1
    end

    if alliance.save
      redirect_to alliance_path(alliance)
    else
      flash[:input_missing] = alliance.errors.full_messages.to_sentence
      redirect_to new_alliance_path
    end
  end

  def show
    @alliance = Alliance.find(params[:id])
  end

  private

  def alliance_params
    params.require(:alliance).permit(:name)
  end
end

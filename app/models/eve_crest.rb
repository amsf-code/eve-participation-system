# frozen_string_literal: true
require 'rest-client'
require 'json'

class EveCrest
  CREST_ENDPOINT = 'https://crest-tq.eveonline.com/'
  CHARACTER_ENDPOINT = 'characters/'
  FLEET_ENDPOINT = 'fleets/'
  FLEET_MEMBERS_ENDPOINT = 'members/'
  ALLIANCES_ENDPOINT = 'alliances/'
  ALLIANCE_PAGE_ENDPOINT = 'page'
  CORPORATION_ENDPOINT = 'corporations/'

  def self.character(eve_character_id)
    request = CREST_ENDPOINT + CHARACTER_ENDPOINT + eve_character_id + '/'
    response = RestClient.get request
    JSON.parse(response)
  end

  def self.fleet_members(eve_fleet_id, user_token)
    if !eve_fleet_id.nil?
      request = CREST_ENDPOINT + FLEET_ENDPOINT + eve_fleet_id + '/' + FLEET_MEMBERS_ENDPOINT
      response = RestClient.get request, Authorization: "Bearer #{user_token}"
      JSON.parse(response)
    end
  end

  def self.alliances
    request = CREST_ENDPOINT + ALLIANCES_ENDPOINT
    response = RestClient.get request
    JSON.parse(response)
  end

  def self.alliances_page(page_number)
    p request = CREST_ENDPOINT + ALLIANCES_ENDPOINT + '?' + ALLIANCE_PAGE_ENDPOINT + '=' + page_number.to_s
    response = RestClient.get request
    JSON.parse(response)
  end

  def self.alliance(alliance_id)
    request = CREST_ENDPOINT + ALLIANCES_ENDPOINT + alliance_id + '/'
    response = RestClient.get request
    JSON.parse(response)
  end

  def self.corporation(corporation_id)
    request = CREST_ENDPOINT + CORPORATION_ENDPOINT + corporation_id + '/'
    response = RestClient.get request
    JSON.parse(response)
  end
end

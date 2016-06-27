# frozen_string_literal: true
require 'rest-client'
require 'json'

class EveCrest
  CREST_ENDPOINT = 'https://crest-tq.eveonline.com/'
  CHARACTER_ENDPOINT = 'characters/'
  FLEET_ENDPOINT = 'fleets/'
  FLEET_MEMBERS_ENDPOINT = 'members/'

  def self.character(eve_character_id)
    request = CREST_ENDPOINT + CHARACTER_ENDPOINT + eve_character_id.to_s + '/'
    response = RestClient.get request
    JSON.parse(response)
  end

  def self.fleet_members(crest_fleet_id)
    request = CREST_ENDPOINT + FLEET_ENDPOINT + crest_fleet_id.to_s + FLEET_MEMBERS_ENDPOINT
    response = RestClient.get request
    JSON.parse(response)
  end
end

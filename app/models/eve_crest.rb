require 'rest-client'
require 'json'

class EveCrest
  CREST_ENDPOINT = 'https://crest-tq.eveonline.com/'
  CHARACTER_ENDPOINT = 'characters/'

  def self.character(eve_character_id)
    request = CREST_ENDPOINT + CHARACTER_ENDPOINT + eve_character_id.to_s + '/'
    response = RestClient.get "#{request}"
    JSON.parse(response)
  end
end

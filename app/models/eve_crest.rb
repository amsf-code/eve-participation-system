require 'rest-client'

class EveCrest
  CREST_ENDPOINT = 'https://crest-tq.eveonline.com/'
  CHARACTER_ENDPOINT = 'characters/'

  def self.character(eve_character_id)
    request = CREST_ENDPOINT + CHARACTER_ENDPOINT + eve_character_id.to_s + '/'
    RestClient.get "#{request}"
  end
end

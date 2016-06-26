require 'rest-client'

class EveCrest
  CREST_ENDPOINT = 'https://crest-tq.eveonline.com/'
  CHARACTER_ENDPOINT = 'characters/'

  def self.character(eve_character_id)
    puts "EVE CREST REQUEST"
    request = CREST_ENDPOINT + CHARACTER_ENDPOINT + eve_character_id.to_s + '/'
    puts request
    RestClient.get request
  end
end

class User < ActiveRecord::Base
  has_many :fleets

  def self.find_or_create_from_auth_hash(auth_hash)
    character_id = auth_hash["info"]["character_id"]
    character_name = auth_hash["info"]["name"]

    eve_character_info = EveCrest.character(character_id)
    puts eve_character_info['corporation']
    puts eve_character_info['name']
    user = User
            .create_with(character_name: character_name)
            .find_or_create_by(character_id: character_id, )
  end
end

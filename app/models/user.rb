class User < ActiveRecord::Base
  has_many :fleets

  def self.find_or_create_from_auth_hash(auth_hash)
    character_id = auth_hash["info"]["character_id"]
    character_name = auth_hash["info"]["name"]

    user = User
            .create_with(character_name: character_name)
            .find_or_create_by(character_id: character_id)
  end

  def self.update_from_character_info(user_id, eve_character_info)
    corporation_name = eve_character_info['corporation']['name']
    corporation_id = eve_character_info['corporation']['id']

    user = User.find(user_id)

    if eve_character_info['alliance'].nil?
      user.update(corporation_id: corporation_id, corporation_name: corporation_name)
    else
      alliance_name = eve_character_info['alliance']['name']
      alliance_id = eve_character_info['alliance']['id']
      user.update(
        corporation_id: corporation_id,
        corporation_name: corporation_name,
        alliance_id: alliance_id,
        alliance_name: alliance_name)
    end
  end
end

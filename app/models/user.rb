# frozen_string_literal: true
class User < ActiveRecord::Base
  has_many :fleets

  def self.find_or_create_from_auth_hash(auth_hash)
    character_id = auth_hash['info']['character_id']
    character_name = auth_hash['info']['name']

    User
      .create_with(character_name: character_name)
      .find_or_create_by(character_id: character_id)
  end

  def self.update_from_character_info(user_id, eve_character_info)
    corporation_name = eve_character_info['corporation']['name']
    corporation_id = eve_character_info['corporation']['id']

    user = User.find(user_id)
    user.update(corporation_id: corporation_id, corporation_name: corporation_name)
  end
end

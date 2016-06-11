class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_hash)
    user = User.find_or_create_by(character_id: auth_hash["info"]["character_id"])
  end
end

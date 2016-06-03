class Fleet < ActiveRecord::Base
  has_many :participations

  def participating?(eve_charid)
    participations.find_by(eve_charid: eve_charid).present?
  end

  def expired?
    #expired if the fleet was created more than 20mins ago
    created_at + (60 * 20) < Time.now
  end
end

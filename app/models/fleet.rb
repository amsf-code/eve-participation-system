class Fleet < ActiveRecord::Base
  has_many :participations

  def participating?(eve_charid)
    participations.find_by(eve_charid: eve_charid).present?
  end

  def expired?
    created_at > 20.minutes.ago
  end
end

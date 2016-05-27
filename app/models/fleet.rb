class Fleet < ActiveRecord::Base
  validates :uuid, uniqueness: true

  def self.build_fleet!
    Fleet.new.tap do |fleet|
      fleet.uuid = SecureRandom.uuid
      fleet.save!
    end
  end
end

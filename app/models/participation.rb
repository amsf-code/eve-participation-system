class Participation < ActiveRecord::Base
  belongs_to :fleet

  validates :eve_charid, uniqueness: { scope: :fleet_id }
end

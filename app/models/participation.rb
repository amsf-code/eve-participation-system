# frozen_string_literal: true
class Participation < ActiveRecord::Base
  belongs_to :fleet

  validates :character_id, uniqueness: { scope: :fleet_id }
end

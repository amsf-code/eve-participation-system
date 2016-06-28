# frozen_string_literal: true
class Fleet < ActiveRecord::Base
  belongs_to :user
  belongs_to :alliance
  has_many :participations

  validates :eve_fleet_id, :name, :doctrin, :details, presence: true

  validate :started_at_date, :ended_at_date

  def started_at_date
    if started_at == ended_at
      errors.add(:started_at, "can't be the same time as Ended at")
    end
  end

  def ended_at_date
    if ended_at < started_at
      errors.add(:ended_at, "can't be in the past before the fleet Started at")
    end
  end
end

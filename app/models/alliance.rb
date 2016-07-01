# frozen_string_literal: true
class Alliance < ActiveRecord::Base
  has_many :corporations
  has_many :fleets
  has_many :characters, through: :corporations

  validates :name, presence: true

  validate :alliance_name

  def alliance_name
    if alliance_id.nil?
      errors.add(:name, 'did not match any alliance')
    end
  end
end

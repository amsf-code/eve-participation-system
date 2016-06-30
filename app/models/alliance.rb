class Alliance < ActiveRecord::Base
  has_many :corporations
  has_many :fleets
  has_many :characters, through: :corporations
end

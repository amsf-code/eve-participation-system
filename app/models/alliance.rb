class Alliance < ActiveRecord::Base
  has_many :corporations
  has_many :fleets
end

class Corporation < ActiveRecord::Base
  belongs_to :alliances
  has_many :characters
end

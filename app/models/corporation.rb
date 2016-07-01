# frozen_string_literal: true
class Corporation < ActiveRecord::Base
  has_one :alliances
  has_many :characters
end

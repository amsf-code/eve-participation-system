# frozen_string_literal: true
class Corporation < ActiveRecord::Base
  belongs_to :alliance
  has_many :characters
end

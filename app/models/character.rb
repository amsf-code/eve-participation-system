# frozen_string_literal: true
class Character < ActiveRecord::Base
  belongs_to :corporation
  belongs_to :alliance
end

class Fleet < ActiveRecord::Base
  validates :uuid, uniqueness: true
  validates :link_key, uniqueness: true

  before_validation(on: :create) do
    self.uuid = SecureRandom.uuid if uuid.blank?
    self.link_key = SecureRandom.hex(20) if link_key.blank?
  end
end

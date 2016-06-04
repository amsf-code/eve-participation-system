class Participation < ActiveRecord::Base
  belongs_to :fleet

  validates :eve_charid, uniqueness: { scope: :fleet_id }


  def self.build_from_eve_headers(eve_char_info)
    new.tap do |participation|
      participation.eve_charid = eve_char_info.id
      participation.eve_charname = eve_char_info.name

      participation.eve_constellationid = eve_char_info.constellationid
      participation.eve_constellationname = eve_char_info.constellationname

      participation.eve_corpid = eve_char_info.corpid
      participation.eve_corpname = eve_char_info.corpname

      participation.eve_allianceid = eve_char_info.allianceid
      participation.eve_alliancename = eve_char_info.alliancename

      participation.eve_shiptypeid = eve_char_info.shiptypeid
      participation.eve_shiptypename = eve_char_info.shiptypename

      participation.eve_solarsystemid = eve_char_info.solarsystemid
      participation.eve_stationid = eve_char_info.stationid
    end
  end
end


=begin
@id = headers['eve_charid']
#name = headers['eve_charname']
@constellationid = headers['eve_constellationid']
#@constellationname = headers['eve_constellationname']
@corpid = headers['eve_corpid']
@allianceid = headers['eve_allianceid']
@solarsystemid = headers['eve_solarsystemid']
@shiptypeid = headers['eve_shiptypeid']

=end

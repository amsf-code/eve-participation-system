# frozen_string_literal: true
class EVECharacterInfo
  attr_reader :id, :name, :constellationid, :constellationname, :corpid, :corpname, :allianceid,
              :alliancename, :solarsystemid, :shiptypeid, :shiptypename, :stationid

  def self.from_ingame_headers(headers)
    new(headers)
  end

  def initialize(headers)
    @id = headers['eve_charid']
    @name = headers['eve_charname']

    @constellationid = headers['eve_constellationid']
    @constellationname = headers['eve_constellationname']

    @corpid = headers['eve_corpid']
    @corpname = headers['eve_corpname']

    @allianceid = headers['eve_allianceid']
    @alliancename = headers['eve_alliancename']

    @shiptypeid = headers['eve_shiptypeid']
    @shiptypename = headers['eve_shiptypename']

    @solarsystemid = headers['eve_solarsystemid']
    @stationid = headers['eve_stationid']
  end
end

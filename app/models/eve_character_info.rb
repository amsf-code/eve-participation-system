class EVECharacterInfo
  attr_reader :id, :constellationid, :corpid, :allianceid, :solarsystemid, :shiptypeid, :stationid

  def self.from_ingame_headers(headers)
    new(headers)
  end

  def initialize(headers)
    @id = headers['eve_charid']
    #name = headers['eve_charname']
    @constellationid = headers['eve_constellationid']
    #@constellationname = headers['eve_constellationname']
    @corpid = headers['eve_corpid']
    @allianceid = headers['eve_allianceid']
    @solarsystemid = headers['eve_solarsystemid']
    @shiptypeid = headers['eve_shiptypeid']
    @stationid = headers['eve_stationid']
  end
end

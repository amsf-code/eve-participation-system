class EVECharacterInfo
  attr_reader :id, :constellationid, :corpid, :allianceid, :solarsystemid, :shiptypeid

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
    @stationid = header['eve_stationid']
  end
end

=begin
eve_charid 	90000013
eve_charname 	66 Shikkoken
eve_constellationid 	20000206
eve_constellationname 	Karnola
eve_corpid 	98000002
eve_corpname 	corpname
eve_corprole 	9223372036854775807
eve_regionid 	10000016
eve_regionname 	Lonetrek
eve_serverip 	serverip
eve_shipid 	1000000002299
eve_shipname 	Sniper Paladin
eve_shiptypeid 	28659
eve_shiptypename 	Paladin
eve_solarsystemid 	30001407
eve_solarsystemname 	Todaki
eve_trusted 	Yes
=end
class EVECharacterInfo
  attr_reader :id, :constellationid, :corpid, :allianceid, :solarsystemid, :shiptypeid

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
  end
end

=begin
eve_charid 	90000013
eve_charname 	66 Shikkoken
eve_constellationid 	20000206
eve_constellationname 	Karnola
eve_corpid 	98000002
eve_corpname 	corpname
eve_corprole 	9223372036854775807
eve_regionid 	10000016
eve_regionname 	Lonetrek
eve_serverip 	serverip
eve_shipid 	1000000002299
eve_shipname 	Sniper Paladin
eve_shiptypeid 	28659
eve_shiptypename 	Paladin
eve_solarsystemid 	30001407
eve_solarsystemname 	Todaki
eve_trusted 	Yes
=end
class EVECharacterInfo
  attr_reader :id, :constellationid, :corpid, :allianceid, :solarsystemid, :shiptypeid

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
  end
end

=begin
eve_charid 	90000013
eve_charname 	66 Shikkoken
eve_constellationid 	20000206
eve_constellationname 	Karnola
eve_corpid 	98000002
eve_corpname 	corpname
eve_corprole 	9223372036854775807
eve_regionid 	10000016
eve_regionname 	Lonetrek
eve_serverip 	serverip
eve_shipid 	1000000002299
eve_shipname 	Sniper Paladin
eve_shiptypeid 	28659
eve_shiptypename 	Paladin
eve_solarsystemid 	30001407
eve_solarsystemname 	Todaki
eve_trusted 	Yes
=end

class EVEHeaders
  attr_reader :eve_charid, :eve_constellationid, :eve_corpid, :eve_allianceid, :eve_solarsystemid, :eve_shiptypeid

  def initialize(headers)
    @eve_charid = headers['eve_charid']
    #@eve_charname = headers['eve_charname']
    @eve_constellationid = headers['eve_constellationid']
    #@eve_constellationname = headers['eve_constellationname']
    @eve_corpid = headers['eve_corpid']
    @eve_allianceid = headers['eve_allianceid']
    @eve_solarsystemid = headers['eve_solarsystemid']
    @eve_shiptypeid = headers['eve_shiptypeid']
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

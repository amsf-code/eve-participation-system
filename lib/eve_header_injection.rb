# frozen_string_literal: true
class EveHeaderInjection
  HEADERS_TO_INJECT = {
    'eve_shipname' => 'Aku Akachi\'s Ibis',
    'eve_solarsystemid' => '30001407',
    'eve_constellationid' => '20000206',
    'eve_shipid' => '1021246602932',
    'eve_constellationname' => 'Karnola',
    'eve_corpname' => 'School of Applied Knowledge',
    'eve_charid' => '96513301',
    'eve_shiptypename' => 'Ibis',
    'eve_shiptypeid' => '601',
    'eve_corpid' => '1000044',
    'eve_solarsystemname' => 'Todaki',
    'eve_regionname' => 'Lonetrek',
    'eve_regionid' => '10000016',
    'eve_trusted' => 'Yes',
    'eve_serverip' => '87.237.34.200:26000',
    'eve_charname' => 'Aku Akachi'
  }.freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    HEADERS_TO_INJECT.each do |name, value|
      env[name] = value unless value.blank?
    end
    @app.call(env)
  end
end

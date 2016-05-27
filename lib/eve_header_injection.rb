class EveHeaderInjection
  HEADERS_TO_INJECT = {
    'HTTP_EVE_SHIPNAME' => 'Aku Akachi\'s Ibis',
    'HTTP_EVE_SOLARSYSTEMID' => '30001407',
    'HTTP_EVE_CONSTELLATIONID' => '20000206',
    'HTTP_EVE_SHIPID' => '1021246602932',
    'HTTP_EVE_CONSTELLATIONNAME' => 'Karnola',
    'HTTP_EVE_CORPNAME' => 'School of Applied Knowledge',
    'HTTP_EVE_CHARID' => '96513301',
    'HTTP_EVE_SHIPTYPENAME' => 'Ibis',
    'HTTP_EVE_SHIPTYPEID' => '601',
    'HTTP_EVE_CORPID' => '1000044',
    'HTTP_EVE_SOLARSYSTEMNAME' => 'Todaki',
    'HTTP_EVE_REGIONNAME' => 'Lonetrek',
    'HTTP_EVE_REGIONID' => '10000016',
    'HTTP_EVE_TRUSTED' => 'Yes',
    'HTTP_EVE_SERVERIP' => '87.237.34.200:26000',
    'HTTP_EVE_CHARNAME' => 'Aku Akachi'
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

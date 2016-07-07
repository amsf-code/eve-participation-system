# frozen_string_literal: true
require 'open-uri'
require 'nokogiri'

# for testing only https://api.testeveonline.com/ !!!
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class EveXml
  BASE_PATH = 'https://api.eveonline.com/'
  CORPORATION_SHEET_ENDPOINT = '/corp/CorporationSheet.xml.aspx?corporationID='

  def self.corporation_sheet(corporation_id)
    request = BASE_PATH + CORPORATION_SHEET_ENDPOINT + corporation_id
    Nokogiri::XML(open(request))
  end
end

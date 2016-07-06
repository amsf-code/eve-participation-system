# frozen_string_literal: true
require 'open-uri'

# for testing only https://api.testeveonline.com/ !!!
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class EveXml
  BASE_PATH = 'https://api.testeveonline.com/'
  CORPORATION_SHEET_ENDPOINT = '/corp/CorporationSheet.xml.aspx?corporationID='

  def self.corporation_sheet(corporation_id)
    EveXml.eve_api_call(CORPORATION_SHEET_ENDPOINT, corporation_id)
  end

  def self.eve_api_call(endpoint_path, argument)
    xml = open(BASE_PATH + endpoint_path + CGI.escape(argument)).read
    XMLParser.parse(xml)
  end
end

# frozen_string_literal: true
require 'nokogiri'

module XMLParser
  def self.parse(xml)
    doc = Nokogiri::XML.parse(xml)

    result = doc.xpath('//result').children

    results = {}
    result.each do |node|
      if node.name == 'rowset'
        name = node.attribute('name').to_s
        key = node.attribute('key').to_s
        columns = node.attribute('columns').to_s

        rows = {}

        node.xpath('//row').each do |row|
          attributes = {}

          columns.split(',').each do |column|
            attributes[column] = row.attribute(column).to_s
          end

          rows[attributes[key]] = attributes
        end
        results[name] = rows
      elsif node.class.name == 'Nokogiri::XML::Element'
        results[node.name] = node.content
      end
    end
    results
  end
end

# frozen_string_literal: true
module ApplicationHelper
  def ship_image_tag(ship_type_id)
    image_tag 'https://image.eveonline.com/Render/' + ship_type_id.to_s + '_128.png'
  end

  def char_image_tag(char_id)
    image_tag 'https://image.eveonline.com/Character/' + char_id.to_s + '_128.jpg'
  end

  def corp_image_tag(corp_id)
    image_tag 'https://image.eveonline.com/Corporation/' + corp_id.to_s + '_128.png'
  end
end

module ParticipationHelper
  def ship_image_tag(ship_type_id)
    image_tag 'https://image.eveonline.com/Render/' + ship_type_id + '_128.png'
  end

  def char_image_tag(char_id)
    image_tag 'https://image.eveonline.com/Character/' + char_id + '_128.jpg'
  end

  def corp_image_tag(corp_id)
    image_tag 'https://image.eveonline.com/Corporation/' + corp_id + '_128.png'
  end
end

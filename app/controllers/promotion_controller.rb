require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    print request.location
    render :json => Shop.near(request.location);

  end
end

# end{
#     dealId: 4,
#     priceCategory: 2,
#     name: 'Panera Free Drink With Purchase!',
#     image: 'test1.jpg',
#     notes: 'Freshly baked bread daily!',
#     startTime: 0500,
#     endTime: 0700
# }

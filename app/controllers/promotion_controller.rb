require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    # @deals=  Shop.near(request.location).get(0);
    render :json=> Shop.near([request.location.longitude, request.location.latitude], 10)
    # render 'list'
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

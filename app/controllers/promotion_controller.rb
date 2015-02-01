require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    render :text=> request.location
    # # @deals=  Shop.near(request.location).get(0);
    # @deals = Shop.first.promotions();
    # render "list"


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

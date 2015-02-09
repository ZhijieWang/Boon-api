require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    # @deals=  Shop.near(request.location).get(0);
    if(Rails.env.development?)
      @deals = Shop.first.promotions()
    else
      @deals = Shop.first.promotions()
    end

    render 'list'
  end
  private
  def geo_params
    params.require(:input)
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

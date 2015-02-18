require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    if(Rails.env.development?)
      @deals = Shop.first.promotions()
    else
      @deals = Shop.first.promotions()
    end

    render 'list'
  end
  def tags
    return  nil
  end
  private

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

require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
<<<<<<< HEAD
    render :json=> Shop.near([request.location.longitude, request.location.latitude], 10)
    
    
    
    
=======

    # @deals=  Shop.near(request.location).get(0);
    @deals = Shop.first.promotions()
    render 'list'
>>>>>>> e1d9dfa6219694b98022e04c4b8fde9f89b813e9
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

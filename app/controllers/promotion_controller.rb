require 'geocoder'
require 'pp'
class PromotionController < ApplicationController
  def getbylocation
#    Parameters: {"csrfToken"=>"1234567890", "latitude"=>-79.9514231, "longitude"=>-79.9514231, "timestamp"=>"Fri Feb 20 20151424490570814"}

    @location = Hash.new()
    if(params[:longitude].nil? || params[:latitude].nil?)
      if(request.location.nil?)
        @location[:longitude]= -79.9514231
        @location[:latitude] = -79.9514231
      else
        @location[:longitude]= request.location.longitude
        @location[:latitude] = request.location.latitude
      end
    else
      @location[:longitude]= params[:longitude]
      @location[:latitude] = params[:latitude]
    end

    pp @location
    # @deals = Shop.near([@location[:latitude],@location[:longitude]], 10000)
    # pp @deals
                 # .promotions
  @deals = Shop.first.promotions()
  @shops = Shop.all
  @distance = Hash.new()
    @tags = []
  @shops.each do |shop|
    @tags+=shop.tags
     @distance[shop.id] = shop.distance_from([@location[:latitude],@location[:longitude]])
  end



    render :format => :json, :template => "promotion/promotionList.json.jbuilder"
  end
  def tags
    return  nil
  end
  def accept
    return nil
  end
  def reject
    return nil
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

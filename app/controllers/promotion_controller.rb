require 'geocoder'
class PromotionController < ApplicationController
  def getbylocation
    render :json=> Shop.near([request.location.longitude, request.location.latitude], 10)
    
    
    
    
  end
end

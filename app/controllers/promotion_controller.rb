class PromotionController < ApplicationController
  def getbylocation
    render :json=> Shop.first.promotions
  end
end

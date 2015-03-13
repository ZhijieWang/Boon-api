require 'test_helper'

class GeocodeTest < ActionDispatch::IntegrationTest
  def setup
    Shop.create!({name: "Heimingway's cafe", full_street_address: "3911 Forbes Avenue, Oakland, PA 15213-3507"})
    Shop.first.promotions.create!(title: "Half Time Afternoon", description: "half price menu item", content: "2:00PM -- 4:00PM. 1 drink order or service fee may apply.", category: 0)
    Shop.first.promotions.create!(title: "Half Time Afternoon", description: "half price menu item", content: "2:00AM -- 4:00AM. 1 drink order or service fee may apply.", category: 0)
    Shop.create!({name: "Capital Grille", full_street_address: "Piatt Place, 301 Fifth Avenue, Pittsburgh, PA 15222"})

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    Shop.destroy_all!
  end
  test "geocode" do
    @shops = Shop.near([request.location.longitude, request.location.latitude], 10)

    assert_equal @shops.contains(Shop.first), true
  end
end

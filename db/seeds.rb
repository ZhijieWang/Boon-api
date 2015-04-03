require 'pp'
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Shop.create!({name:"Heimingway's cafe", full_street_address:"3911 Forbes Avenue, Oakland, PA 15213-3507"})
#
# Shop.first.promotions.create!(title:"Half Time Afternoon", description:"half price menu item", content: "2:00PM -- 4:00PM. 1 drink order or service fee may apply.", category:0)
#
# Shop.first.promotions.create!(title:"Half Time Afternoon", description:"half price menu item", content: "2:00AM -- 4:00AM. 1 drink order or service fee may apply.", category:0)
#
# Shop.create!({name:"Capital Grille", full_street_address:"Piatt Place, 301 Fifth Avenue, Pittsburgh, PA 15222"})
#
# @shop = Shop.find(1)
# @shop.tag_list.add("bar", "beer", "cheap", "awesome")
# @shop.save!()
# @shop = Shop.find(2)
# @shop.tag_list.add("grill", "classic", "expensive", "awesome")
# @shop.promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)
# @shop.promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)
# @shop.promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)
# @shop.save!()
# Shop.create!({name:"Five Guys", full_street_address:"117 S Bouquet St, Pittsburgh, PA 15213 (University of Pittsburgh)"})
# @shop = Shop.find(3)
# @shop.tag_list.add("fast food", "delicious", "unhealthy")
# @shop.promotions.create!(title:"Customer appreciation day", description:"free drink", content:"one day only", category:2)
# @shop.promotions.create!(title:"Free 1 extra topping", description:"1 extra topping on the house", content:"one day only", category:2)
#
# Shop.create!(name:"Hello Bistro", full_street_address:"3605 Forbes Ave, Pittsburgh, PA 15213" )
# Shop.find(4).tag_list.add("medium", "fancy", "milk shake")
# Shop.find(4).promotions.create!(title:"10% off on milk shakes", description:"10% discount milk shake when you buy any meal", content:"monthly", category:3)


CSV.foreach(File.join(Rails.root, "app/assets/images/Shops.csv")) do |line|
  shop = line
  @shop = Shop.create!({:name=>shop[0],:id=>shop[1], :full_street_address=> shop[2] })
  @shop.tag_list.add(shop[5..shop.length])
  @shop.save!
end

CSV.foreach(File.join(Rails.root, "app/assets/images/Deals.csv")) do |line|
  promotion = line
  @promotion = Promotion.create!({:title=>promotion[3],:id=>promotion[1],:shop_id=> promotion[2], :category=>promotion[4], })
end

CSV.foreach(File.join(Rails.root, "app/assets/images/Picture.csv")) do |line|
  picture = line
  @picture = Picture.create!({:id=>picture[1],:shop_id=> picture[2], :url=>picture[3] })
end







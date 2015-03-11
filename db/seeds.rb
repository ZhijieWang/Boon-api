# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create!({name:"Heimingway's cafe", full_street_address:"3911 Forbes Avenue, Oakland, PA 15213-3507"})

Shop.first.promotions.create!(title:"Half Time Afternoon", description:"half price menu item", content: "2:00PM -- 4:00PM. 1 drink order or service fee may apply.", category:0)

Shop.first.promotions.create!(title:"Half Time Afternoon", description:"half price menu item", content: "2:00AM -- 4:00AM. 1 drink order or service fee may apply.", category:0)

Shop.create!({name:"Capital Grille", full_street_address:"Piatt Place, 301 Fifth Avenue, Pittsburgh, PA 15222"})

Shop.first.tag_list.add("bar", "beer", "cheap", "awesome")

Shop.find(2).tag_list.add("grill", "classic", "expensive", "awesome")
Shop.find(2).promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)
Shop.find(2).promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)
Shop.find(2).promotions.create!(title:"30% off Steak", description:"special deals on fresh steak", content:"7:00 pm 9:00 pm ", category:2)

Shop.ceate!({name:"Five Guys", full_street_address:"117 S Bouquet St, Pittsburgh, PA 15213 (University of Pittsburgh)"}
Shop.find(3).tag_list.add("fast food", "delicious", "unhealthy")
Shop.find(3).promotions.create!(title:"Customer appreciation day", description:"free drink", content:"one day only", category:2)
Shop.find(3).promotions.create!(title:"Free 1 extra topping", description:"1 extra topping on the house", content:"one day only", category:2)

Shop.create!(name:"Hello Bistro", full_street_address:"3605 Forbes Ave, Pittsburgh, PA 15213"} )
Shop.find(4).tag_list.add("medium", "fancy", "milk shake")
Shod.find(4).promotions.create!(title:"10% off on milk shakes", description:"10% discount milk shake when you buy any meal", content:"monthly", category:3)
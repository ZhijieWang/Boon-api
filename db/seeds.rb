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
Shop
Shop.find(2).tag_list.add("grill", "classic", "expensive", "awesome")

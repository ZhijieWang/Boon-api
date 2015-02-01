# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shop.create!({name:"Heimingway's cafe", full_street_address:"3911 Forbes Avenue · Oakland, PA 15213-3507"})

Shop.first.promotions.create!(title:"Half Time Afternoon", description:"half price menu item", content: "2:00PM -- 4:00PM. 1 drink order or service fee may apply.", category:0)

collection @deals
attributes :id => :dealId, :category => :priceCategory, :description => :notes, :title => :name
node(:startTime){"April 17, 2025 01:24:00"}
node(:endTime){"April 17, 2015 03:24:00"}
node(:imageUrl)  {"http://lorempixel.com/450/350/"}
#notes(:endTime) { attributes :full_name }
#node(:read) { |post| post.read_by?(@user) }

# end{
#     dealId: 4,
#     priceCategory: 2,
#     name: 'Panera Free Drink With Purchase!',
#     image: 'test1.jpg',
#     notes: 'Freshly baked bread daily!',
#     startTime: 0500,
#     endTime: 0700
# }

collection @deals
attributes :id => :dealId, :category => :priceCategory, :description => :notes
node(:startTime){"December 17, 1995, 01:24:00"}
node(:endTime){"December 17, 1995, 03:24:00"}
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

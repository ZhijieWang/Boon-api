collection @deals
attributes :id => :dealId, :category => :priceCategory, :description => :notes
#notes(:user) { attributes :full_name }
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

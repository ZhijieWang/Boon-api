class Shop < ActiveRecord::Base
  has_many :promotions, dependent: :destroy
  geocoded_by :full_street_address
  after_validation :geocode

end

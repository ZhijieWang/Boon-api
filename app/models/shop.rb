class Shop < ActiveRecord::Base
  has_many :promotions, dependent: :destroy
  geocoded_by :full_street_address

  after_validation :geocode
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :tags
end

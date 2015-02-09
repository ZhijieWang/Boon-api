class Promotion < ActiveRecord::Base
  belongs_to :shop
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :tags
end

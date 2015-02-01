class Shop < ActiveRecord::Base
  has_many :promotions, dependent: :destroy
end

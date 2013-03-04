class Customer < ActiveRecord::Base
  attr_accessible :tableNumber, :totalOrder
  has_many :orders
end

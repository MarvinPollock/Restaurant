class Order < ActiveRecord::Base
  attr_accessible :comment, :oderID, :orderTimeStamp, :price, :tableNumber
end

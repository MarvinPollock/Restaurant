class Order < ActiveRecord::Base
  attr_accessible :comment, :oderID, :orderTimeStamp, :price, :tableNumber
  has_many :articles
  belongs_to :customer
end

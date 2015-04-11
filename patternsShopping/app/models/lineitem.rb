class Lineitem < ActiveRecord::Base
  attr_accessible :cart_id, :order_id, :product_id, :quantity
end

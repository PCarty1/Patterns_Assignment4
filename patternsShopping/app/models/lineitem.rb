class Lineitem < ActiveRecord::Base
  attr_accessible :cart_id, :order_id, :product_id, :quantity
  belongs_to :cart
	belongs_to :order
	belongs_to :stock_product
end

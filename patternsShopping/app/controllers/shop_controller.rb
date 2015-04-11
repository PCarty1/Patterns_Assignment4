class ShopController < ApplicationController
  def index
	@products = Stock_Product.order("title asc").all
  end

end

class ShopController < ApplicationController
  def index
	@products = Stock_Product.order("title asc").all
  end
  
 def join  
   p 'Welcome to our shop :)'  
  end  
  def accessDetails  
   p 'We will recieve your details'  
  end  
  def leave  
   p 'You have left'  
  end   
end

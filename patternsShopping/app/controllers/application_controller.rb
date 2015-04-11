class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include ApplicationHelper

  def authorise
        unless signed_in?
           store_location
           redirect_to signin_path, :notice => "Please sign in to access this page."
        end
  end 
  
  
  private							#Note the private

	def current_cart
		cart = Cart.find_by_id(session[:cart_id])
		if cart.nil?
				cart = Cart.create
				session[:cart_id] = cart.id
		end
		cart #returns the cart object, getter methods in urbt return the last statement
	end
		
		
		
		
	def store_location
       session[:return_to] = request.fullpath
   end
   
end
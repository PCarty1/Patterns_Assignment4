class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :paymethod, :shippingaddress
  
  has_many :orders
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	def self.authenticate(name, email)
		customer = find_by_name(name)
		return nil  if customer.nil?
		return customer if customer.email == email
		return nil
	end  
end

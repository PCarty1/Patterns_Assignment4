class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :paymethod, :shippingaddress
end

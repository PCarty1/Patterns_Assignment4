class Cart < ActiveRecord::Base
	has_many :lineitems, dependent: :destroy  
	
	def add_product(product_id)
	
	current_item = lineitems.find_by_product_id(product_id)
	
	if current_item
		current_item.quantity += 1
	else
		current_item = lineitems.build(product_id:product_id)
		current_item.quantity = 1
	end
	current_item
	
	
	end
end

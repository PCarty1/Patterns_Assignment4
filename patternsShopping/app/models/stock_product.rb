class StockProduct < ActiveRecord::Base
  attr_accessible :description, :image, :manufacturer, :price, :quantity, :stocktype, :title
  has_many :lineitems
	has_many :orders, :through => :lineitems
	
	mount_uploader :image, ImageUploader
end

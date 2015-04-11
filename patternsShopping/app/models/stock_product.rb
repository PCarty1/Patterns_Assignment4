class StockProduct < ActiveRecord::Base
  attr_accessible :description, :image, :manufacturer, :price, :quantity, :stocktype, :title
end

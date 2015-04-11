class CreateStockProducts < ActiveRecord::Migration
  def change
    create_table :stock_products do |t|
      t.string :title
      t.string :description
      t.string :manufacturer
      t.decimal :price
      t.string :image
      t.integer :quantity
      t.string :stocktype

      t.timestamps
    end
  end
end

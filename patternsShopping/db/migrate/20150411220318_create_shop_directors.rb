class CreateShopDirectors < ActiveRecord::Migration
  def change
    create_table :shop_directors do |t|

      t.timestamps
    end
  end
end

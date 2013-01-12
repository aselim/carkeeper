class AddCarPrice < ActiveRecord::Migration
def self.up
     add_column :cars, :price,    :integer
 end

 def self.down
     remove_column :cars, :price
 end

end

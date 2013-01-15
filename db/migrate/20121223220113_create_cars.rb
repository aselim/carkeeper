class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.datetime :datein
      t.string :brand
      t.string :carmodel
      t.integer :year
      t.integer :cc
      t.boolean :used
      t.float :km
      t.integer :user_id
      t.text :comment

      t.timestamps
    end
  end
end

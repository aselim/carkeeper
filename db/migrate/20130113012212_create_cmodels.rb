class CreateCmodels < ActiveRecord::Migration
  def change
    create_table :cmodels do |t|
      t.string :name
      t.integer :brand_id

      t.timestamps
    end
  end
end

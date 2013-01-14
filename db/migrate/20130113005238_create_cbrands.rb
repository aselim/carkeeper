class CreateCbrands < ActiveRecord::Migration
  def change
    create_table :cbrands do |t|
      t.string :name

      t.timestamps
    end
  end
end

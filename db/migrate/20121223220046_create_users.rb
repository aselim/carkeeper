class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :password
      t.string :mobile
      t.string :tel
      t.text :address
      t.string :id
      t.string :mail

      t.timestamps
    end
  end
end

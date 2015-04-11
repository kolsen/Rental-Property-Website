class CreateAddProperties < ActiveRecord::Migration
  def change
    create_table :add_properties do |t|
      t.string :address
      t.string :apartment
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps null: false
    end
  end
end

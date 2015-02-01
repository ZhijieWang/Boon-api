class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :full_street_address
      t.timestamps :null=> false
    end
  end
end

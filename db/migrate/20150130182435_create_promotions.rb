class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.belongs_to :shop, index: true
      t.string :title
      t.string :description
      t.integer :category, :default=> 0
      t.string :content
      t.timestamps :null => false
    end
  end
end

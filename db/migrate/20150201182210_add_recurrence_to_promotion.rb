class AddRecurrenceToPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :recurrence, :integer, :default => 0
    add_column :promotions, :slot, :string
  end
end

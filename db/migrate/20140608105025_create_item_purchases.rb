class CreateItemPurchases < ActiveRecord::Migration
  def change
    create_table :item_purchases do |t|
      t.integer :count
      t.integer :item_id
      t.integer :purchaser_id

      t.timestamps
    end
  end
end

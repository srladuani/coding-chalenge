class CreateTableItemMerchants < ActiveRecord::Migration
  def change
    create_table :items_merchants do |t|
      t.integer :item_id
      t.string :merchant_id
    end
  end
end

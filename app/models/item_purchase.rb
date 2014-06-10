class ItemPurchase < ActiveRecord::Base

  belongs_to :item
  belongs_to :purchaser

  def self.import_data(count,purchaser_id,item_id)
  	create(count: count,purchaser_id: purchaser_id, item_id: item_id)
  end

  def self.purhcased_items_with_price_quantity
    joins(:item,:purchaser).group(:item_id,:purchaser_id).select("SUM(count) as quantity,purchasers.name as purchased_by, items.description as description, items.price as price")
  end
end

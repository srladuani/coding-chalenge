class Purchaser < ActiveRecord::Base

  has_many :item_purchases
  has_many :items, :through => :item_purchases

  def self.import_data(name)
  	where(name: name).first_or_create
  end

end

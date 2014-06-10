class Item < ActiveRecord::Base

  has_many :item_purchases
  has_many :purchasers,:through => :item_purchases
  has_and_belongs_to_many :merchants

  def self.import_data(description,price)
  	where(description: description,price:price).first_or_create
  end
  
end

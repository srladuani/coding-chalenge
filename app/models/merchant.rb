class Merchant < ActiveRecord::Base

  has_and_belongs_to_many :items

  def self.import_data(address,name)
  	where(address: address, name: name).first_or_create
  end

  def associate_or_get_items(item)
  	unless self.items.include? item
  		self.items << item
  	end
  	self.items
  end
  
end

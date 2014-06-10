class DataController < ApplicationController
	require 'csv'
	def upload
	end

	def parse
		file=params[:file]
		begin
			CSV.foreach(file.path, headers: true,:col_sep => "\t") do |row|
				purchaser=Purchaser.import_data(row[0])
				item=Item.import_data(row[1],row[2])
				ItemPurchase.import_data(row[3],purchaser.id,item.id)
				merchant=Merchant.import_data(row[4],row[5])
				items=merchant.associate_or_get_items(item)
			end
			redirect_to revenue_data_path,notice:"Data saved successfully."
		rescue 
			render action: "upload", notice: "File errors occured."
		end
	end

	def revenue
		@notice=flash[:notice]
		@purchased_items=ItemPurchase.purhcased_items_with_price_quantity
	end
end

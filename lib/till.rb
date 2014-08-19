class Till
	def initialize
		@items = nil
		@price_list = nil
	end

	def accept_basket basket
		raise ArgumentError, 'No items in basket!' unless basket.has_items?
		@items = basket.dump_all!
		self
	end



	def items_in_till 

		@items 

	end

	def load_prices price_list

		@price_list = price_list

		self

	end

	def price_of product

		@price_list.price_of(product)

	end


end
class Till
	def initialize
		@basket = nil
	end

	def accept_basket basket
		raise ArgumentError, 'No items in basket!' unless basket.has_items?
		@basket = basket
		self
	end


end
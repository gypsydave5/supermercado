class Basket
	def initialize
		@products = []
	end

	def has_items?
		@products.any?
	end

	def receive product
		@products << product
		self
	end

	def count_products
		@products.count
	end
end
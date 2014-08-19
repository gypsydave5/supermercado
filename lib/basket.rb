class Basket
	def initialize
		@products = []
	end

	def has_items?
		@products.any?
	end

	def receive *received_products
		received_products.each do |product|
			@products << product
		end
		self
	end

	def count_products
		@products.count
	end

	def remove product

		@products.delete product
	end
end
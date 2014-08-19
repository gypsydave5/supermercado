class Basket
	def initialize
		@products = []
	end

	def has_items?
		@products.any?
	end

	def receive *received_products
		@products += received_products
		self
	end

	def count_products
		@products.count
	end

	def remove product
		@products.delete product
	end

	def dump_all!
		dumped_products = @products
		@products = []
		dumped_products
	end
end
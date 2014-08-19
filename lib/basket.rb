class Basket
	def initialize
		@products = {}
	end

	def has_items?
		@products.any?
	end

	def receive *received_products
		received_products.each do |product|
			@products.include?(product.id) ?  @products[product.id] += 1 : @products[product.id] = 1
		end
		self
	end

	def count_products
		@products.values.inject(:+)
	end

	def remove product
		@products[product.id] -= 1
	end

	def dump_all!
		dumped_products = @products
		@products = {}
		dumped_products
	end
end
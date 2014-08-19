class LineItem

	attr_accessor :quantity, :item

	def initialize(item:, quantity:)
		@item = item
		@quantity = quantity
	end

	def total
		@item.price * quantity
	end

end

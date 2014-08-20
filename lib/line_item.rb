require 'money'

class LineItem

	include Money

	attr_accessor :quantity, :item

	def initialize(item:, quantity:)
		@item = item
		@quantity = quantity
	end

	def total
		money_round(@item.price * quantity)
	end

end

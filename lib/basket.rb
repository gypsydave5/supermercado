class Basket

	attr_accessor :line_items

	def initialize(*line_items)
		@line_items = line_items
	end

	def delete_line(rejected_item)
		@line_items.delete_if {|line| line.item_name == rejected_item}
	end

	def total
		@line_items.inject(0) {|total, line| total + line.total}
	end

end

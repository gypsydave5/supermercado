require 'money_spec'
require 'money'
require 'line_item'

describe LineItem do

	it_behaves_like "working with money"

  let ( :line_item )  { LineItem.new(item: item, quantity: 1) }
	let ( :item      )  { double :item, price: 0.47             }

	it 'has an item and a quantity' do
		expect(line_item.item).to eq item
		expect(line_item.quantity).to eq 1
	end

	it 'can have its quantity changed' do
		line_item.quantity = 20
		expect(line_item.quantity).to be 20
	end

	it 'can return its total price' do
		line_item.quantity = 10
		expect(line_item.total).to eq 4.7
	end

end

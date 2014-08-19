require 'till'

describe Till do
		
	let(:basket)  {double :basket}
	let(:till)    {Till.new      }

	it 'accept a basket of products' do
		expect(till.accept_basket(basket)).to be basket
	end

	it 'raise error if basket is empty' do
		basket_empty = double :basket, has_items?: false

		expect{till.accept_basket(basket_empty)}.to raise_error(ArgumentError, "No items in basket!")
	end
end
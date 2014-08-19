require 'till'

describe Till do

	it 'accept a basket of produts' do
		basket = double :basket
		till = till.new
		expect(till.accept_basket(basket)).to be basket
	end
end

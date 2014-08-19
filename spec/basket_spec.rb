require 'basket'

describe Basket do

	it 'it should initialized empty' do
		basket = Basket.new

		expect(basket.has_items?).to be false
	end	

end
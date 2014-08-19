require 'basket'

describe Basket do
	let(:basket) { Basket.new }

	it 'should initialized empty' do
		expect(basket.has_items?).to be false
	end	

	it 'receives products' do
		product = double :product
		expect(basket.receive(product)).to eq basket
	end

end
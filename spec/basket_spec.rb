require 'basket'

describe Basket do
	let(:basket)  { Basket.new }
	let(:product) {double :product}

	it 'should initialized empty' do
		expect(basket.has_items?).to be false
	end	

	it 'receives products' do
		
		expect(basket.receive(product)).to eq basket
	end

	it "tells how many products got inside" do

		basket.receive product

		expect(basket.count_products).to eq 1

	end

end
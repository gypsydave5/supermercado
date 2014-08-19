require 'product'

describe Product do

	it 'initialized with a price of 30 can return its price' do
		product = Product.new(30.00)
		expect(product.price).to eq 30.00
	end

	it 'can have its price changed' do
		product = Product.new(20.00)
		product.price = 10.00
		expect(product.price).to eq 10.00
	end



end

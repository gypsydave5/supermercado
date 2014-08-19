require 'item'

describe Item do

	let(:item) { Item.new(price: 50.00, name: :salami) }

	it 'can return its price' do
		expect(item.price).to be 50.00
	end

	it 'can return its name' do
		expect(item.name).to be :salami
	end
end

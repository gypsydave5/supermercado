require 'till'

describe Till do
		
	let ( :basket )  { double :basket, has_items?: true, dump_all!: { cigarettes: 1, baked_beans: 2 } }
	let (:price_list ) { double :price_list  }
	let ( :till   )  { Till.new                         } 

	def pop_price_list
		allow(price_list).to receive(:price_of).with(:cigarettes).and_return(7.99)
		allow(price_list).to receive(:price_of).with(:baked_beans).and_return(0.59)
		till.load_prices(price_list)
	end

	it 'accept a basket of products' do
		expect(till.accept_basket(basket)).to be till
	end

	it 'raise error if basket is empty' do
		basket_empty = double :basket, has_items?: false
		expect{till.accept_basket(basket_empty)}.
			to raise_error(ArgumentError, "No items in basket!")
	end

	it 'received the items dumped by the basket' do
		expect(till.accept_basket(basket).items_in_till).
			to eq ({ cigarettes: 1, baked_beans: 2 } )
	end

	it 'can have a price list' do
		expect(till.load_prices(price_list)).to be till
	end

	it 'can get the price of an item in the checkout (like when they do a price check at the till)' do
		pop_price_list
		till.accept_basket(basket)
		expect(till.price_of(:cigarettes)).to eq 7.99
	end

	it 'calculates the total value of the items in the basket' do
		pop_price_list
		till.accept_basket(basket)
		expect(till.total_price).to eq (( 2*0.59 ) + 7.99)
	end

end
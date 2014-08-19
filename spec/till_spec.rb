require 'till'

describe Till do
		
	let ( :basket )  { double :basket, has_items?: true, dump_all!: { product_one: 1, product_two: 2 } }
	let ( :product_one ) { double :product, id: :baked_beans }
	let ( :product_two ) { double :product, id: :cigarettes }
	let (:price_list ) { double :price_list  }
	let ( :till   )  { Till.new                         } 

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
			to be ({ product_one: 1, product_two: 2 })
	end

	xit 'calculates the total value of the items in the basket' do
		allow(price_list).to receive(:price_of).with(:cigarettes).and_return(7.99)
		allow(price_list).to receive(:price_of).with(:baked_beans).and_return(0.59)
	end
end
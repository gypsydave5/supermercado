require 'basket'

describe Basket do
	let ( :basket      ) { Basket.new                         }
	let ( :product     ) { double :product, id: :peanuts_100g }
	let ( :product_two ) { double :product, id: :teabags_20   }

	it 'should initialized empty' do
		expect(basket.has_items?).to be false
	end

	it 'receives products' do
		expect(basket.receive(product)).to eq basket
	end

	it "tells how many products got inside" do
		basket.receive(product, product)
		expect(basket.count_products).to eq 2
	end

	it "can have products taken out" do
		basket.receive(product, product_two)
		basket.remove (product)
		expect(basket.count_products).to eq 1
	end

	it "can release all products at once" do
		basket.receive(product, product_two)
		expect(basket.dump_all!).to eq ({product.id =>  1, product_two.id => 1})
	end

	it "should be able to give a list of equal products" do
		basket.receive(product, product, product_two)
		expect(basket.count_products_by_id(product.id)).to eq 2
	end

end
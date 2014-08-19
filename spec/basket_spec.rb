require 'basket'

describe Basket do

  let ( :basket     )  { Basket.new(line_item1, line_item2)                  } 
  let ( :line_item2 )  { double :line_item, item_name: :ham, total: 20.00    } 
  let ( :line_item1 )  { double :line_item, item_name: :cabbage, total: 0.59 } 

	it 'takes line items when initialized' do
		expect(basket.line_items).to eq [ line_item1, line_item2 ]
	end

	it 'can remove entire lines' do
		basket.delete_line(:ham)
		expect(basket.line_items).to eq [ line_item1 ]
	end

	it 'can calculate the total price' do
		expect(basket.total).to eq 20.59	
	end

end

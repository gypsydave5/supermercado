require 'money'

shared_examples "working with money" do

	it 'always rounds a float to two decimal places' do
		expect(money_round(33.66666666)).to be 33.67
	end

end


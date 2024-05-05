require '../string_calculator.rb'
# require 'rspec'

RSpec.describe StringCalculator do
	subject(:calculator) { described_class.new }

	describe "#add" do
		it 'should accept a string' do
    	expect{ calculator.int_add('1,2,3') }.not_to raise_error
  	end

	  it 'should raise error if input is not string' do
	    expect { calculator.int_add(123) }.to raise_error
	  end
	end
end
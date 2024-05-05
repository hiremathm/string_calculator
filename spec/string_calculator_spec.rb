require '../string_calculator.rb'

RSpec.describe StringCalculator do
	subject(:calculator) { described_class.new }

	describe "#add" do
		it 'should accept a string' do
    	expect{ calculator.int_add('1,2,3') }.not_to raise_error
  	end

	  it 'should not accept other data types' do
    	expect{ calculator.int_add(123) }.to raise_error('only accepts a string')
    	expect{ calculator.int_add(['123']) }.to raise_error('only accepts a string')
  	end

  	it 'should return 0 for an empty string' do
    	expect(calculator.int_add('')).to eq(0)
  	end

  	it 'should not accept negative numbers' do
    	expect{ calculator.int_add("123,-2") }.to raise_error("cannot accept negatives - -2")
  	end
	end
end
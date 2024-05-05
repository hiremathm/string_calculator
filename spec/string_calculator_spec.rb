require '../string_calculator.rb'
# require 'rspec'

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
	end
end
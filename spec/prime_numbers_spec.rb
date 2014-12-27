require 'spec_helper'
require 'prime_numbers'

describe PrimePrinter do
  it 'prints out prime numbers between 0 and the given argument' do
    prime_test = PrimePrinter.new(40)

    expect(prime_test.print).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37])
  end

end

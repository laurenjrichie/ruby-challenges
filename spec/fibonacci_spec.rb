require 'spec_helper'
require 'fibonacci'

describe Fibonacci do
  it 'returns a sequence of Fibonacci numbers' do
    sequence = Fibonacci.new(10)

    expect(sequence.print_numbers).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
  end
end

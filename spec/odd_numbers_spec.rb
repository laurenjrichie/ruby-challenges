require 'spec_helper'
require 'odd_numbers'

describe OddPrinter do
  it 'prints odd numbers from 1 to a given number' do
    odd_printer = OddPrinter.new(19)
    expect(odd_printer.print_odds).to eq(
      "1, 3, 5, 7, 9, 11, 13, 15, 17, 19"
    )
  end
end

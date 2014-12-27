require 'spec_helper'
require 'multiplication_table'

describe MultiplicationTable do
  before do
    @table = MultiplicationTable.new(9,9)
  end

  it 'prints a row of column headings' do
    column_headings = @table.print_column_headings
    expect(column_headings).to eq(
      "    1    2    3    4    5    6    7    8    9"
    )
  end

  xit 'prints a heading for a single row' do
    expect(@table.print_row(5)).to eq("5|  ")
  end

  xit 'prints a single row' do
    expect(@table.print_row(9)).to eq(
      "9    18   27   36   45   54   63   72   81"
    )
  end

  xit 'accounts for spacing of single and double digit numbers' do
    expect(@table.print_number(6)).to eq("6    ")
    expect(@table.print_number(66)).to eq("66   ")
  end

  xit 'prints a complete, spaced table' do
    expect(@table.create_table).to eq(
      "    1    2    3    4    5    6    7    8    9

      1|  1    2    3    4    5    6    7    8    9
      2|  2    4    6    8    10   12   14   16   18
      3|  3    6    9    12   15   18   21   24   27
      4|  4    8    12   16   20   24   28   32   36
      5|  5    10   15   20   25   30   35   40   45
      6|  6    12   18   24   30   36   42   48   54
      7|  7    14   21   28   35   42   49   56   63
      8|  8    16   24   32   40   48   56   64   72
      9|  9    18   27   36   45   54   63   72   81"
    )
  end
end

# not working! getting nil

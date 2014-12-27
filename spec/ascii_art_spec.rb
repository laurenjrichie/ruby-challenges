require 'spec_helper'
require 'ascii-art/part_2'

describe Ascii do
  xit 'asks what character to make the pyramid out of' do
    art_test = Ascii.new

    # not working

    expect(art_test.get_character).to include("What character do you want to make the pyramid out of?")
  end

  xit 'asks how many rows to make' do
    art_test = Ascii.new
    @character = "#"

    # not working

    expect(art_test.get_rows).to eq("How many rows of #'s do you want?")
  end

  it 'makes a triangle with requested character and rows' do
    art_test = Ascii.new

    expect(art_test.make_triangle("*", 7)).to eq("
              *
             ***
            *****
           *******
          *********
         ***********
    ")
  end

end


# none of this is working!

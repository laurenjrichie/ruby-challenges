require 'spec_helper'
require 'count_evens'

describe Array do
  it 'counts the number of even numbers in an array' do
    array = [2,5,9,15,22,99]

    expect(array.count_evens).to eq(
      "HI FRIEND, I AM ARRAY.  I HAVE 2 EVEN NUMBERS.  PRETTY AWESOME YES?  I LOVE YOU GOODBYE"
    )
  end

end

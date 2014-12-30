require 'spec_helper'
require 'reverse_a_string'

describe Reverse do
  it 'returns a string reversed' do
    reverse_test = Reverse.new
    string = "reverse"

    expect(reverse_test.reverse_string(string)).to eq("esrever")
  end

end

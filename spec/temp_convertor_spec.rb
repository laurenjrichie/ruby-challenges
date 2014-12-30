require 'spec_helper'
require 'temp_convertor'

describe TempConvertor do
  it 'converts from C to F' do
    convertor = TempConvertor.new
    celsius = 25 # does this override what's in the method?

    expect(convertor.celsius_to_fahrenheit).to eq(77.0)
  end

  xit 'converts from F to C' do
    convertor = TempConvertor.new

    expect(convertor.fahrenheit_to_celsius).to eq()
  end

end

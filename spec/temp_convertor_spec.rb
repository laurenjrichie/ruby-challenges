require 'spec_helper'
require 'temp_convertor'

describe TempConvertor do
  it 'converts from C to F' do
    convertor = TempConvertor.new

    expect(convertor.c_to_f(25)).to eq(
      "25 degrees Celsius is equal to 77.0 degrees Fahrenheit."
    )
  end

  it 'converts from F to C' do
    convertor = TempConvertor.new

    expect(convertor.f_to_c(75)).to eq(
      "75 degrees Fahrenheit is equal to 23.89 degrees Celsius."
    )
  end

end

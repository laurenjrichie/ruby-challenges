require 'spec_helper'
require 'say_hello'

describe Array do
  it 'has a method say_hello' do
    array = [1, 2, 3]

    expect(array.say_hello).to eq(
      "HEY THERE, I'M AN ARRAY! SOMEONE FUCKED WITH MY CODE :("
    )
  end

end

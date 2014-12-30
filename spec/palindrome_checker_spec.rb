require 'spec_helper'
require 'palindrome_checker'

describe PalindromeChecker do
  it 'reverses a string' do
    checker = PalindromeChecker.new
    string = "testing"

    expect(checker.reverse_string(string)).to eq("gnitset")
  end

  it 'catches if the reversed string is equal to the original string' do
    checker = PalindromeChecker.new
    string = "toot"
    reversed_string = "toot"

    expect(checker.evaluate_string(string, reversed_string)).to eq("toot is a palindrome")
  end

  it 'catches if the reversed string is not equal to the original string' do
    checker = PalindromeChecker.new
    string = "testing"
    reversed_string = "gnitset"

    expect(checker.evaluate_string(string, reversed_string)).to eq("testing is NOT a palindrome")
  end

end

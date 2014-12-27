# Write code that determines if a given string is a palindrome.
# Do not use the .reverse() String method. You can use the code
# you wrote for the above problem.

class PalindromeChecker

  def initialize
    puts "Enter a string"
    @string = gets.chomp
  end

  def reverse_string
    counter = 0
    length = @string.length
    index = length
    reversed_string = ''

    while counter <= length
      character = "#{@string[index]}"
      reversed_string << character
      counter += 1
      index -= 1
    end

    reversed_string
  end

  def evaluate_string
    if reverse_string == @string
      puts "#{@string} is a palindrome"
    else
      puts "#{@string} is NOT a palindrome"
    end
  end

  def run
    reverse_string
    evaluate_string
  end

end

PalindromeChecker.new.run

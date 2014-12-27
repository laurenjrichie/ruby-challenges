# Reverse a string in place. In other words, do not create a new string
# or use other methods on the string such as reverse. The goal of the problem
# is to use a loop and the string accessors to figure out which values to swap
# for other values. Below is the output.
#
# Enter a string:
# > reverse_me
# em_esrever

class Reverse

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

end

reverse_test = Reverse.new
p reverse_test.reverse_string

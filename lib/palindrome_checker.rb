class PalindromeChecker

  def get_string
    puts "Enter a string"
    gets.chomp
  end

  def reverse_string(string)
    counter = 0
    length = string.length
    index = length
    reversed_string = ''

    while counter <= length
      character = "#{string[index]}"
      reversed_string << character
      counter += 1
      index -= 1
    end

    reversed_string
  end

  def evaluate_string(string, reversed_string)
    if string == reversed_string
      "#{string} is a palindrome"
    else
      "#{string} is NOT a palindrome"
    end
  end

  def run
    string = get_string
    reversed_string = reverse_string(string)
    puts evaluate_string(string, reversed_string)
  end

end

PalindromeChecker.new.run

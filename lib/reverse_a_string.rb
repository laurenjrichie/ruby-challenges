class Reverse

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

  def run
    reverse_string(get_string)
  end

end

p Reverse.new.run

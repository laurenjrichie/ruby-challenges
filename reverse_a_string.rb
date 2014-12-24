# Reverse a string in place. In other words, do not create a new string
# or use other methods on the string such as reverse. The goal of the problem
# is to use a loop and the string accessors to figure out which values to swap
# for other values. Below is the output.
#
# Enter a string:
# > reverse_me
# em_esrever

puts "Enter a string:"
string = gets.chomp
length = string.length
counter = 0
index = length
new_string = ''

while counter <= length
  character = "#{string[index]}"
  new_string << character
  counter += 1
  index -= 1
end

puts new_string

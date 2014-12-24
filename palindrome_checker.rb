# Write code that determines if a given string is a palindrome.
# Do not use the .reverse() String method. You can use the code
# you wrote for the above problem.

puts "Enter a string"
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

if new_string == string
  puts "#{string} is a palindrome"
else
  puts "#{string} is NOT a palindrome"
end

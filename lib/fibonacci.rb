# Write code to print out the first 100 Fibonacci numbers.
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34... each successive number is the sum of the previous two

start = 0
numbers = [0, 1]
while numbers.length < 100
  next_number = numbers[-1] + numbers[-2]
  numbers << next_number
end
p numbers.length
p numbers

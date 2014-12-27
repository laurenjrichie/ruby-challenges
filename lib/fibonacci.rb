# Write code to print out the first 100 Fibonacci numbers.
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34... each successive number
# is the sum of the previous two

class Fibonacci

  def initialize(number)
    @number = number
  end

  def print_numbers
    start = 0
    numbers = [0, 1]
    while numbers.length < @number
      next_number = numbers[-1] + numbers[-2]
      numbers << next_number
    end
    numbers
  end

end

p Fibonacci.new(100).print_numbers

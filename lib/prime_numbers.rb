# Write a method called prime_printer(max) which takes one integer argument.
# It should print out all the prime numbers between 0 and the given argument.

def prime_printer(max)
  number = 3
  if max <= 2
    primes = []
  elsif max == 3
    primes = [2]
  else
    primes = [2, 3]
  end

  while number < max
    divisor = 2
    testing_number = true

      while testing_number && divisor <= number/2  # only need to increment divisor up through number/2
        if number%divisor == 0
          testing_number = false
        elsif divisor == number/2  # if divisor has gotten all the way to number/2 without loop ending, number must be prime
          primes << number
        end
        divisor += 1
      end

    number +=2
  end

  p primes
end

prime_printer(50)

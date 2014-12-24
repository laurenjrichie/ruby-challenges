# Create a program that picks a random number between 1 and 100
# and then asks the user to guess the number. Once the user guesses
# a number, the program should say, higher, lower, or tell the user
# that they got the number correct. The user should continue to make
# guesses until he guesses correctly. Also, once the user guesses
# correctly, the program should print the number of guesses needed
# to arrive at the correct answer. Below is sample output:
#
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries

@number = rand(2..99).to_i
@tries = 1

def guess_again(direction, guess)
  puts "The number is #{direction} than #{guess}. Guess again"
end

def high_or_low(guess)
  if guess < @number
    guess_again("higher", guess)
    run
  elsif guess > @number
    guess_again("lower", guess)
    run
  end
end

def run
  guess = gets.chomp.to_i
  if guess != @number
    @tries += 1
    high_or_low(guess)
  elsif guess == @number
    puts "You got it in #{@tries} tries."
  end
end

puts "Guess a number between 1 and 100"
run

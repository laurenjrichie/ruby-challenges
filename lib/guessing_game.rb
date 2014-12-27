class GuessingGame

  def initialize
    puts "Guess a number between 1 and 100"
    @number = rand(2..99).to_i
    @tries = 1
  end

  def another_prompt(direction, guess)
    puts "The number is #{direction} than #{guess}. Guess again"
  end

  def high_or_low?(guess)
    if guess < @number
      another_prompt("higher", guess)
      run
    elsif guess > @number
      another_prompt("lower", guess)
      run
    end
  end

  def run
    guess = gets.chomp.to_i
    if guess != @number
      @tries += 1
      high_or_low?(guess)
    elsif guess == @number
      puts "You got it in #{@tries} tries."
    end
  end

end

GuessingGame.new.run

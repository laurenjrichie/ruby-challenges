class GuessingGame

  def initialize
    @tries = 1
  end

  def generate_number
    @number = rand(2..99).to_i
  end

  def prompt
    "Guess a number between 1 and 100"
  end

  def get_guess
    gets.chomp.to_i
  end

  def another_prompt(direction, guess)
    puts "The number is #{direction} than #{guess}. Guess again"
  end

  def high_or_low?(guess, number)
    if guess < number
      @tries = @tries + 1
      result = another_prompt("higher", guess)
      run
    elsif guess > number
      @tries = @tries + 1
      result = another_prompt("lower", guess)
      run
    elsif guess == number
      result = got_it(@tries)
    end
    result
  end

  def got_it(tries)
    puts "You got it in #{tries} tries."
  end

  def run
    if @tries == 1
      generate_number
      puts prompt
      guess = get_guess
      puts high_or_low?(guess, @number)
    else
      guess = get_guess
      high_or_low?(guess, @number)
    end
  end

end

# GuessingGame.new.run

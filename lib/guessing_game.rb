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
    puts result = "The number is #{direction} than #{guess}. Guess again"
    result
  end

  def high_or_low?(guess, number, run_again)
    if guess < number
      @tries = @tries + 1
      result = another_prompt("higher", guess)
      run if run_again == true
    elsif guess > number
      @tries = @tries + 1
      result = another_prompt("lower", guess)
      run if run_again == true
    elsif guess == number
      result = got_it(@tries)
    end
    result
  end

  def got_it(tries)
    puts congrats = "You got it in #{tries} tries."
    congrats
  end

  def run
    if @tries == 1
      generate_number
      puts prompt
      guess = get_guess
      high_or_low?(guess, @number, true)
    else
      guess = get_guess
      high_or_low?(guess, @number, true)
    end
  end

end

GuessingGame.new.run  # comment this out to make tests pass

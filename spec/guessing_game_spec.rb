require 'spec_helper'
require 'guessing_game'

describe GuessingGame do
  before do
    @game = GuessingGame.new
  end

  it 'picks a random number between 1 and 100' do
    expect(@game.generate_number).to be_between(2, 99).inclusive
  end

  it 'asks the user to guess the number' do
    expect(@game.prompt).to eq("Guess a number between 1 and 100")
  end

  it 'evaluates whether the guess was high or low and prompts another guess' do
    guess = 50
    number = 70
    run_again = false

    expect(@game.high_or_low?(guess, number, run_again)).to eq("The number is higher than 50. Guess again")
  end

  it 'tells the user how many guesses was needed once the number is guessed correctly' do
    tries = 7

    expect(@game.got_it(tries)).to eq("You got it in 7 tries.")
  end

end

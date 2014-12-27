require 'spec_helper'
require 'guessing_game'

describe GuessingGame do
  before do
    @game = GuessingGame.new
  end

  it 'picks a random number between 1 and 100'
  # do you test for the stuff in initialize? How to test for random generation?

  xit 'asks the user to guess the number' do
    expect(@game.initialize).to include("Guess a number between 1 and 100")
  end

  xit 'prompts the user to guess again in the correct direction' do
    expect(@game.high_or_low?(150)).to eq("The number is lower than 150. Guess again")
  end

  xit 'tells the user how many guesses was needed once the number is guessed correctly' do
    expect(@game.run).to include("You got it in")
  end

end

# not working!!

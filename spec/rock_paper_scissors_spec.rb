require 'spec_helper'
require 'rock_paper_scissors'

describe RockPaperScissors do
  before do
    @game = RockPaperScissors.new
  end

  it 'prompts the user for a choice' do
    expect(@game.prompt).to include("What's your choice?")
  end

  it 'computer generates a random choice' do
    expect(@game.computer_chooses).to match(/(rock|paper|scissors)/)
  end

  it 'scissors beats paper' do
    user_choice = "paper"
    computer_choice = "scissors"

    expect(@game.evaluate(user_choice, computer_choice)).to eq("Scissors wins!")
  end

  it 'paper beats rock' do
    computer_choice = "paper"
    user_choice = "rock"

    expect(@game.evaluate(user_choice, computer_choice)).to eq("Paper wins!")
  end

  it 'rock beats scissors' do
    computer_choice = "rock"
    user_choice = "scissors"

    expect(@game.evaluate(user_choice, computer_choice)).to eq("Rock wins!")
  end

  it 'its a tie' do
    computer_choice = "rock"
    user_choice = "rock"

    expect(@game.evaluate(user_choice, computer_choice)).to eq("It's a tie!")
  end

end

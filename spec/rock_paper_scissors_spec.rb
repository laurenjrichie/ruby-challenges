require 'spec_helper'
require 'rock_paper_scissors'

describe RockPaperScissors do
  before do
    @game = RockPaperScissors.new
  end

  xit 'prompts the user for a choice' do
    # not working
    expect(@game.prompt).to include("What's your choice?")
  end

  it 'computer generates a random choice' do
    expect(@game.computer_chooses).to match(/(rock|paper|scissors)/)
  end

  it 'scissors beats paper' do
    @user_choice = "paper"
    @computer_choice = "scissors"
    # why is this failing?
    expect(@game.evaluate).to eq("Scissors wins!")
  end

  it 'paper beats rock' do
    @computer_choice = "paper"
    @user_choice = "rock"

    expect(@game.evaluate).to eq("Paper wins!")
  end

  it 'rock beats scissors' do
    @computer_choice = "rock"
    @user_choice = "scissors"

    expect(@game.evaluate).to eq("Rock wins!")
  end

  it 'its a tie' do
    @computer_choice = "rock"
    @user_choice = "rock"

    expect(@game.evaluate).to eq("It's a tie!")
  end

end

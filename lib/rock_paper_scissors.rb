class RockPaperScissors
  def prompt
    puts "Welcome to Rock, Paper, Scissors. What's your choice?"
  end

  def user_chooses
    @user_choice = gets.chomp
  end

  def computer_chooses
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def evaluate
    winner = ''
    if @user_choice == "rock"
      if @computer_choice == "rock"
        winner = "It's a tie!"
      elsif @computer_choice == "paper"
        winner = "Paper wins!"
      else
        winner = "Rock wins!"
      end
    elsif @user_choice == "paper"
      if @computer_choice == "rock"
        winner = "Paper wins!"
      elsif @computer_choice == "paper"
        winner = "It's a tie!"
      else
        winner = "Scissors wins!"
      end
    else
      if @computer_choice == "rock"
        winner = "Rock wins!"
      elsif @computer_choice == "paper"
        winner = "Scissors wins!"
      else
        winner = "It's a tie!"
      end
    end
    winner
  end

  def run
    prompt
    user_chooses
    computer_chooses
    puts "Computer chooses #{@computer_choice}."
    puts evaluate
  end

end

RockPaperScissors.new.run

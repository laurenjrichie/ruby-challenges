class RockPaperScissors
  def prompt
    "Welcome to Rock, Paper, Scissors. What's your choice?"
  end

  def user_chooses
    gets.chomp
  end

  def computer_chooses
    choice = ["rock", "paper", "scissors"].sample
    puts "Computer chooses #{choice}."
    choice
  end

  def evaluate(user_choice, computer_choice)
    winner = ''
    if user_choice == "rock"
      if computer_choice == "rock"
        winner = "It's a tie!"
      elsif computer_choice == "paper"
        winner = "Paper wins!"
      else
        winner = "Rock wins!"
      end
    elsif user_choice == "paper"
      if computer_choice == "rock"
        winner = "Paper wins!"
      elsif computer_choice == "paper"
        winner = "It's a tie!"
      else
        winner = "Scissors wins!"
      end
    else
      if computer_choice == "rock"
        winner = "Rock wins!"
      elsif computer_choice == "paper"
        winner = "Scissors wins!"
      else
        winner = "It's a tie!"
      end
    end
    winner
  end

  def run
    puts prompt
    user_choice = user_chooses
    computer_choice = computer_chooses
    puts evaluate(user_choice, computer_choice)
  end

end

RockPaperScissors.new.run

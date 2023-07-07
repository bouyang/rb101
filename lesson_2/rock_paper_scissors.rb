VALID_CHOICES = %w(r p s l sp)

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  win_hash = { 'r' => ['s', 'l'],
               'p' => ['r', 'sp'],
               's' => ['p', 'l'],
               'l' => ['p', 'sp'],
               'sp' => ['r', 's'] }
  
  win_hash.each do |key, value|
    if first == key
      return value.include?(second)
    end
  end
  false
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def win_track(player, computer)
  if win?(player, computer)
    'W'
  elsif win?(computer, player)
    'L'
  else
    'T'
  end
end

def grand_winner_check(current_score)
  player_wins = 0
  comp_wins = 0

  current_score.each do |result|
    if result == "W"
      player_wins += 1
    elsif result == "L"
      comp_wins += 1
    end

    if player_wins == 3
      return 'player'
    elsif comp_wins == 3
      return 'computer'
    end
  end
end

choice = ''
score = []

loop do
  loop do
    prompt("Choose one: rock (r), paper (p), scissors (s), lizard (l), spock (sp)}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  score.push(win_track(choice, computer_choice))
  prompt("The current scores are: #{score}")

  if grand_winner_check(score) == 'player'
    prompt("You have won 3 and are the grand winner!")
    break
  elsif grand_winner_check(score) == 'computer'
    prompt("The computer has won 3 are is the grand winner!")
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

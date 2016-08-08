require_relative "methods"
hands = ["paper", "rock", "scissors"].sample

puts "Choose your hand (rock, paper, scissors)"
user_hand = gets.chomp

user_wins = 0
cpu_wins = 0

until user_hand == ""
if hands.include? user_hand
  computer_hand = hands.sample
  if user_hand == computer_hand
    puts "that's a draw mate"
  else
    if player_wins? (user_hand, computer_hand)
      user_wins += 1
    puts "you're a champ. Computer's hand was #{computer_hand}"
    else
      cpu_wins += 1
    puts "nah, not for you mate. Computer's hand was #{computer_hand}"
    end
  end
else
  puts "That ain't a rock, scissors, or a paper..."
end
puts "Player: #{user_wins} - #{cpu_wins} CPU"
puts "Choose your hand (rock, paper, scissors)"
user_hand= gets.chomp
end

user_wins > cpu_wins ?(puts "You are the big WINNER") : (puts"Loooooooser")

puts "Thank for playing"
puts "bye bye

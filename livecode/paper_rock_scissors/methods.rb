def player_wins?(player_hand, cpu_hand)
  if player_hand == "scissors"
    return (cpu_hand == "paper")
  elsif player_hand == "rock"
    return (cpu_hand == "scissors")
  elsif player_hand == "paper"
    return (cpu_hand == "rock")
  end
end

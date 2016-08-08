require_relative 'race'
# implement a horse race
# enter the name of 5 horses
# Display their ranks at 4 steps of the race

#build an array of horses
horses = ["boudin créole", "vache à lait", "papillard nerveux", "cacahuet", "mustang"]
puts "Horses in departure are : "

horses.each do |horse|
  puts horse
end
puts "-" * 20

puts "Bet on a horse:"
bet_horse = gets.chomp
puts "\n"
until horses.include?(bet_horse)
  puts "wrong horse"
  puts "Bet on a horse:"
end
puts "The race start! "

#shuffle horses
horses.shuffle!
#display horses with their rank
final_ranking = []
["100m", "200m", "300m", "Finally"].each do |step|
  puts "#{step} the ranking is : "
final_ranking = state_of_the_race(horses)
puts "-" * 20
end

#test if bet_horse == first of shuffle array of horses

if bet_horse == final_ranking[0]
  puts "You win! "
else
  puts "You losse, the winner is #{final_ranking[0]}"
end

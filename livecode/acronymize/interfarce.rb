require_relative "acronymize"

puts "What do you want to acronymize? "
user_input = gets.chomp

until user_input == ""
  puts acronymize(user_input)
  puts "What do you want to acronymize? "
  user_input = gets.chomp
end
puts "Go to work"


require_relative 'calculator'
# Doit demander un nombre
# Un deuxième
# afficher le résultat
# l'utilisateur doit pouvoir choisir l'opération à faire

first_number = ask_for_a_number('first')
if is_a_number?(first_number)
# Opération
  puts "Give me the operation to do : + - * % /:"
  operation = gets.chomp
  second_number = ask_for_a_number('second')
  if is_a_number?(second_number)
    puts "The result of #{first_number} #{operation} #{second_number} = "
    puts calculate(operation, first_number, second_number)
    operation = gets.chomp
  else
  puts display_error_on_number
  end
else
  puts display_error_on_number
end


puts "The result of #{first_number} #{operation} #{second_number} = "
puts calculate(operation, first_number, second_number)




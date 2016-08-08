
def calculate (operation, first_number, second_number)
if  operation == "*"
  result = first_number * second_number
elsif operation == "+"
  result = first_number + second_number
elsif operation == "-"
  result =  first_number - second_number
elsif operation == "%"
  result = first_number % second_number
elsif operation == "/"
  result = (first_number.to_f / second_number).round(4)
else
  result = "I didn't understand #{operation}"
end
  return result
end


def ask_for_a_number(rank)
  puts  "Give me a #{rank} number: "
  return gets.chomp.to_f
end
#check if it is a number

def is_a_number?(number)
  p number
  return number.to_s =~ /\d+/
end

def display_error_on_number
 return "Dude, it's not a number, you don't need me..."
end

# Implement a shopping cart
# You must be able to add any item to the cart
# shopping_cart = []

# fruit = {}

# price = {
#   banane: 2,
#   framboise: 1,
#   kiwi: 3 }

# until  fruit == ""
#   puts "What do you want to buy today?"
#   fruit = gets.chomp
#   shopping_cart << fruit
#   price.each do |fruit_choosed, fruit_value|
#     puts "The price of your #{fruit_choosed} is #{fruit_value} each, how much of it do you want ?" if fruit == fruit_choosed.to_s
#   quantity = gets.chomp.to_i
#   final_price = price.map.each_value do |fruit_value|
#     puts "#{quantity} * #{fruit_value}" if quantity == gets.chomp.to_i
#   end
#   end
#   return "#{final_price}"
#  end

# shopping_cart.delete("")
# #Display cart list as a bill with items, quantity, unit price and total price
# puts "shopping cart"
# shopping_cart.each do |fruit|
#   puts "- #{fruit}"
# end

shopping_cart = {}

stock = {
  bananas: {
    quantity: 10,
    price: 3
  },
  apples: {
    quantity: 10,
    price: 4
  },
  lemons: {
    quantity: 10,
    price: 5
  }
}
answer = nil # on initiliase la variable car elle ne correspond à dans le until
until answer == "no" # => se rapporter à la dernière question "do you want to shop again?"
  puts "Wich fruit to add to your cart (bananas, apples, lemons):"
  fruit = gets.chomp.downcase
  if stock.keys.include?(fruit.to_sym) # => string
    puts "how many fruits?"
    number = gets.chomp.to_i
    if number <= stock[fruit.to_sym][:quantity]
      shopping_cart[fruit] = { # => on récupère la variable fruit pour en faire une key
      quantity: number,
      price: stock[fruit.to_sym][:price]
    }
    stock[fruit.to_sym][:quantity] -= number
    puts "Continue shopping?"
    answer = gets.chomp
    else
    puts "Try again, it remains only #{stock[fruit.to_sym][:quantity]} for #{fruit}"
   end
 else
  puts "try again #{fruit} is not available in our store"
 end
end

puts "$" * 20
puts "Shopping cart"
total_price = 0
shopping_cart.each do |fruit, properties|
  subtotal = properties[:quantity] * properties[:price]
  puts " - #{properties[:quantity]} kg of #{fruit} : #{subtotal} euros"
  total_price += subtotal
end
puts "total_price: #{total_price} euro"
p stock

# require_relative 'gift_list'

# wishlist = [
#   {name: "socks", price: 5, checked: true},
#   {name: "tie", price: 10, checked: false}
# ]

# menu = puts "What do you want to do : "
#   puts "1 - List wishlist"
#   puts "2 - Add item"
#   puts "3 - Remove item"
#   puts "4 - Mark item as bought"
#   puts "5 - Add an item from Etsy"
#   puts "6 - Exit"
# answer = nil
# until answer == 6
#   puts menu
#   answer = gets.chomp.to_i
#   if answer == 1
#     puts list_wishlist(wishlist)
#   elsif answer == 2
#     puts add_item(wishlist)
#   elsif answer == 3
#     puts remove_item(wishlist)
#   elsif answer == 4
#     puts bought_item(wishlist)
#   else answer == 6
#     puts "goodbye"
# end
# end
require_relative 'gift_list'
require_relative 'etsy_scraper'

wishlist = [
  {name: "socks", price: 5, checked: true},
  {name: "tie", price: 10, checked: false}
]

answer = nil
until answer == 5
  puts "What do you want to do?"
  puts "1 - List wishlist"
  puts "2 - Add an item"
  puts "3 - Remove an item"
  puts "4 - Mark an item as bought"
  puts "5 - Add an item from Etsy"
  puts "6 - Exit"
  answer = gets.chomp.to_i

  case answer
  when 1
    # LIST WHISHLIST
    puts "!" * 20
    puts "My wishlist"
    puts "!" * 20
    display_wishlist(wishlist)
    puts "!" * 20
  when 2
    # ADD AN ITEM
    puts "Which item do you want to add?"
    name = gets.chomp
    puts "How much is it?"
    price = gets.chomp.to_i

    new_item = { name: name, price: price, checked: false}
    wishlist << new_item
  when 3
    puts "Which item do you want to remove?"
    display_wishlist(wishlist)
    item_index = gets.chomp.to_i - 1
    wishlist.delete_at(item_index)
  when 4
    puts "Which item did you buy?"
    display_wishlist(wishlist)
    checked_item_index = gets.chomp.to_i - 1
    wishlist[checked_item_index][:checked] = true
  when 5
    puts "search with eatsy"
    etsy_scrap
  else
    answer = 6
  end

end



# # add an item
# def add_item(wishlist)
# puts "Which item do you want to add to your Wishlist ?"
# items = gets.chomp
# puts "#{items} has been added to your wishlist"
# puts "How much is it ?"
# price = gets.chomp.to_i
# new_item = { name: name, price: price, checked: false}
# wishlist << new_item
# end


# # List wishlist
# def list_wishlist(wishlist)
# puts "!" * 20
# puts "My wishlist"
# puts "!" * 20
#   wishlist.each do |item|
#     if item[:checked]
#       puts "[X] #{item[:name]} #{item[:price]}€"
#     else
#       puts "[ ] #{item[:name]} #{item[:price]}€"
#     end
#     puts "!" * 20
#   end
# end


def remove_item(wishlist)
  puts "Which item do you want to remove?"
  wishlist.each_with_index do |item, index|
     if item[:checked]
      puts "#{index + 1} - [X] #{item[:name]} #{item[:price]}€"
    else
      puts "#{index + 1} - [ ] #{item[:name]} #{item[:price]}€"
    end
    puts "/" * 20
  end
 # ask for item to delete
  item_index = gets.chomp.to_i - 1
  wishlist.delete_at(item_index)
end


# def bought_item(wishlist)
#   puts "Wich item did you buy ?"
#   wishlist.each_with_index do |item, index|
#   if item[:checked]
#       puts "#{index + 1} [X] #{item[:name]} #{item[:price]}€"
#     else
#       puts "#{index + 1} [ ] #{item[:name]} #{item[:price]}€"
#     end
#     checked_item_index = gets.chompt.to_i - 1
#     wishlist[checked_item_index][:checked] = true
#   end
# end
def display_wishlist(wishlist)
  wishlist.each_with_index do |item, index|
    if item [:checked]
      puts "#{index + 1} - [X] #{item[:name]} #{item[:price]} euros"
    else
      puts "#{index + 1} - [X] #{item[:name]} #{item[:price]} euros"
    end
  end
end


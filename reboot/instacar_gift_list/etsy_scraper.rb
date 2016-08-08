require 'open-uri'
require 'nokogiri'


def etsy_scrap

item = gets.chomp
html_file = open("https://www.etsy.com/fr/search?q=#{item}")
html_doc = Nokogiri::HTML(html_file)

items = []
html_doc.search('.card-meta').each do |element|
  item_name = element.search.each_with_index('.card-title')[0].text.strip
  item_price = element.search('.currency')[0].text.to_f
  items << {
    name: item_name,
    price: item_price
  }
  items.each_with_index do |element, index|
    if item [:checked]
      puts "#{index + 1} - [X] #{element[:name]} #{element[:price]} euros"
    else
      puts "#{index + 1} - [ ] #{element[:name]} #{element[:price]} euros"
    end
  end
end
puts items
return items
end

def add_item(wishlist)
puts "Which item do you want to add to your Wishlist ?"
items = gets.chomp
puts "#{items} has been added to your wishlist"
puts "How much is it ?"
price = gets.chomp.to_i
new_item = { name: item_name, price: item_price, checked: false}
wishlist << items
end


# def remove_item(wishlist)
#   puts "Which item do you want to remove?"
#   wishlist.each_with_index do |item, index|
#      if item[:checked]
#       puts "#{index + 1} - [X] #{item[:name]} #{item[:price]}€"
#     else
#       puts "#{index + 1} - [ ] #{item[:name]} #{item[:price]}€"
#     end
#     puts "/" * 20
#   end
#  # ask for item to delete
#   item_index = gets.chomp.to_i - 1
#   wishlist.delete_at(item_index)
# end

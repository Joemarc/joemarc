def acronymize(sentence)
  words = sentence.split (" ")
  selected_array = words.map {|word| word[0].upcase}.join
  end
end

puts acronymize("Not safe for work")

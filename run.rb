# Example of using .each method to iterate through each item of an array:
puts "Example of using .each method to iterate through each item of an array:"

new_array = ["This", "is", "Ruby"].each do |str|
  puts str.upcase
end

puts new_array

# Example of using .map to iterate through an array of objects, to then return an array of objects:
puts "\nExample of using .map to iterate through an array of objects, to then return an array of objects:"
[1, 2, 3].map { |num| num * 2}

users = [{ name: "Duane", phone: "555-555-5555"}, { name: "Liza", phone: "555-555-5556" }]

users.map do |user|
  puts "\nName: #{user[:name]} | Phone: #{user[:phone]}"
end

# Example of using .collect to iterate through an array of numbers to then return a modified version of the array with separate calculated values:
puts "\nExample of using .collect to iterate through an array of numbers to then return a modified version of the array with separate calculated values:"

modified_array = [1, 2, 3].collect { |num| num * 2 }

puts modified_array

# Example of using .filter method (NOTE: This is also aliased for '.select' and '.find_all)'
puts "\nExample of using .filter method (NOTE: This is also aliased for '.select' and '.find_all)'"
even_values = [1, 2, 3, 4, 5].filter { |num| num.even? }

puts even_values

# Example of using .filter to filter out non-nil words: (NOTE: This won't return capitalized words because it only returns elements of the original array)
puts "\nExample of using .filter to filter out non-nil words: (NOTE: This won't return capitalized words because it only returns elements of the original array)"

words = ["give", "it", nil, "your", nil, "best", "shot"]

filtered_words = words.filter do |word|
  if word != nil
    word.capitalize
  end
end

puts filtered_words

# Example of using .filter to filter out non-nil words and then using .map afterwards to capitalize each word:
puts "\nExample of using .filter to filter out non-nil words and then using .map afterwards to capitalize each word:"
words = ["give", "it", nil, "your", nil, "best", "shot"]

new_filtered_words = words.filter do |word|
  word != nil
end

capitalized_words = new_filtered_words.map do |word|
  word.capitalize
end

puts capitalized_words

# Example of using 'pretzel colon' syntax
puts "\nExample of chaining .filter and .map, and using 'pretzel colon' syntax:"
chained_pretzel_words = words.filter { |word| word != nil }.map(&:capitalize)

puts chained_pretzel_words

# Example of using '.compact' and '.map'
puts "\nExample of using '.compact' and '.map'"
compact_chained_words = words.compact.map(&:capitalize)
puts compact_chained_words

# Example of using '.find' / '.detect' to iterate through an array to find the first result, and comparing it to .filter:
puts "\nExample of using '.find' / '.detect' to iterate through an array to find the first result, and comparing it to .filter:"
find_result = [1, 2, 3, 4, 5].find { |num| num.even? }

puts "find_result: ", find_result

filter_result = [1, 2, 3, 4, 5].filter { |num| num.even? }
puts "filter_result: ", filter_result

puts "\nUsing .find to find user name 'Liza': "
users = [{ name: "Duane", phone: "555-555-5555"}, { name: "Liza", phone: "555-555-5556" }]

users.find do |user|
  puts user[:name] == "Liza"
end

# Example of using .sort to sort through an array based on criteria:
puts "\nExample of using .sort to sort through an array based on criteria (NOTE: Using '.sort' in a normal circumstance will NOT alter the original array):"

nums = [1, 5, 3]

sorted_nums = nums.sort

puts "sorted_nums", sorted_nums

# Example of using .sort with a more complex array of objects to sort the objects based upon the ':name' symbol alphabetically
puts "\nExample of using .sort with a more complex array of objects to sort the objects based upon the ':name' symbol alphabetically"

users = [
  { name: "Liza", phone: "555-555-5556" },
  { name: "Duane", phone: "555-555-5555"},
  { name: "Cara", phone: "555-555-5556"},
]

sorted_users = users.sort do |user1, user2|
  if user1[:name] == user2[:name]
    0
  elsif user1[:name] < user2[:name]
    -1
  elsif user1[:name] > user2[:name]
    1
  end
end

puts sorted_users

# Example using the 'spaceship operator', '<=>' or the 'combined comparison operator':
puts "\nExample using the 'spaceship operator', '<=>' or the 'combined comparison operator':"

# NOTE: These are the values of what the 'spaceship operator', '<=>', or the 'combined comparison operator' returns:
# 0: If the first operand equals the second
# -1: If the first operand is less than the second
# 1: If the first operand is greater than the second

spaceship_users = users.sort do |user1, user2|
  user1[:name] <=> user2[:name]
end

puts spaceship_users

# Example of using '.sort_by' method to sort by a specific value:
puts "\nExample of using '.sort_by' method to sort by a specific value:"
sort_by_users = users.sort_by do |user|
  user[:name]
end

puts sort_by_users

# frozen_string_literal: true

puts 'Enter your first name:'
# @type [String]
first_name = gets.chomp

puts 'Enter your last name:'
# @type [String]
last_name = gets.chomp

# @type [String]
full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"

# @type [Integer]
num_characters = first_name.length + last_name.length
puts "Your name has #{num_characters} characters in it"

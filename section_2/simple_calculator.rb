# frozen_string_literal: true

# @param number1 [String]
# @param number2 [String]
# @return [Float]
def add(number1, number2)
  number1.to_f + number2.to_f
end

# @param number1 [String]
# @param number2 [String]
# @return [Float]
def subtract(number1, number2)
  number1.to_f - number2.to_f
end

# @param number1 [String]
# @param number2 [String]
# @return [Float]
def multiply(number1, number2)
  number1.to_f * number2.to_f
end

# @param number1 [String]
# @param number2 [String]
# @return [Float]
def divide(number1, number2)
  number1.to_f / number2.to_f
end

# @param number1 [String]
# @param number2 [String]
# @return [Integer]
def modulus(number1, number2)
  number1.to_i % number2.to_i
end

puts 'Simple Calculator'
17.times { print '=' }
print "\n"

puts "\nEnter the first number (called x):"
# @type [String]
x = gets.chomp

puts "\nEnter the second number (called y):"
# @type [String]
y = gets.chomp

puts "\nAvailable mathematical operations:"
puts '1 - Addition'
puts '2 - Subtraction'
puts '3 - Multiplication'
puts '4 - Division'
puts '5 - Modulo'

puts "\nChoose an operation (enter an option number):"
# @type [Integer]
option_number = gets.chomp.to_i

case option_number
when 1
  puts "\nYou have chosen to add!"
  puts "x + y = #{add(x, y)}"
when 2
  puts "\nYou have chosen to subtract!"
  puts "x - y = #{subtract(x, y)}"
when 3
  puts "\nYou have chosen to multiply!"
  puts "x * y = #{multiply(x, y)}"
when 4
  puts "\nYou have chosen to divide!"
  puts "x / y = #{divide(x, y)}"
when 5
  puts "\nYou have chosen to compute the modulus!"
  puts "x % y = #{modulus(x, y)}"
else
  puts "\nYou have chosen an invalid option."
end

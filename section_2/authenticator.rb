# frozen_string_literal: true

# @type [String]
input = ''

# @type [Integer]
num_attempts = 3

# @type [Array]
users = [
  { username: 'peter', password: 'birdistheword' },
  { username: 'lois', password: 'pewterschmidt' },
  { username: 'meg', password: 'megatron' },
  { username: 'chris', password: 'evilmonkey' },
  { username: 'stewie', password: 'rupert' }
]

puts 'Welcome to the authenticator'
28.times { print '=' }
print "\n\n"
puts 'This program will take input from the user, and compare the password.'
puts 'If the password is correct, you will get back the user object.'

while num_attempts.positive? && input != 'q'
  print "\nUsername: "
  # @type [String]
  username = gets.chomp

  print 'Password: '
  # @type [String]
  password = gets.chomp

  # @type [Hash]
  user_object = users.find { |user| user[:username] == username && user[:password] == password }
  break unless user_object.nil?

  puts "\nCredentials were not correct."
  num_attempts -= 1
  next unless num_attempts.positive?

  print 'Enter q to quit or anything else to continue: '
  input = gets.chomp.strip.downcase
end

if !user_object.nil?
  puts "\n#{user_object}"
elsif num_attempts.zero?
  puts 'You have exceeded the number of attempts.'
end

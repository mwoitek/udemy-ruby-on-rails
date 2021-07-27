# frozen_string_literal: true

require 'bcrypt'

# @type [Array]
# users = [
#   { username: 'peter', password: 'birdistheword' },
#   { username: 'lois', password: 'pewterschmidt' },
#   { username: 'meg', password: 'megatron' },
#   { username: 'chris', password: 'evilmonkey' },
#   { username: 'stewie', password: 'rupert' }
# ]

def create_hash(password)
  BCrypt::Password.create(password)
end

def verify_hash(hashed_password)
  BCrypt::Password.new(hashed_password)
end

# @param users_array [Array]
# @return [Array]
def create_secure_users(users_array)
  users_array.each { |user_record| user_record[:password] = create_hash(user_record[:password]) }
  users_array
end

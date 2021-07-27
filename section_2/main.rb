# frozen_string_literal: true

require_relative 'crud'

# @type [Array]
users = [
  { username: 'peter', password: 'birdistheword' },
  { username: 'lois', password: 'pewterschmidt' },
  { username: 'meg', password: 'megatron' },
  { username: 'chris', password: 'evilmonkey' },
  { username: 'stewie', password: 'rupert' }
]

# Testing the methods in the Crud module

# @type [Array]
secure_users = Crud.create_secure_users(users)
puts
puts secure_users
puts

# @type [Hash]
authenticated_user = Crud.authenticate_user('stewie', 'rupert', secure_users)
puts authenticated_user
puts

authenticated_user = Crud.authenticate_user('lois', 'pewterschmidt', secure_users)
puts authenticated_user
puts

authenticated_user = Crud.authenticate_user('peter', 'password', secure_users)
puts authenticated_user
puts

authenticated_user = Crud.authenticate_user('username', 'password', secure_users)
puts authenticated_user

# frozen_string_literal: true

# Crud module
module Crud
  require 'bcrypt'
  puts 'Module CRUD activated'

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(hashed_password)
    BCrypt::Password.new(hashed_password)
  end

  # @param users_array [Array]
  # @return [Array]
  def create_secure_users(users_array)
    users_array.each { |user_record| user_record[:password] = create_hash_digest(user_record[:password]) }
    users_array
  end

  # @param username [String]
  # @param password [String]
  # @param users_array [Array]
  # @return [Hash]
  def authenticate_user(username, password, users_array)
    authenticated_user = users_array.find do |user_record|
      user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end

    if authenticated_user.nil?
      puts 'Credentials were not correct'
      authenticated_user = {}
    end

    authenticated_user
  end
end

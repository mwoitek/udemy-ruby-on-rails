# frozen_string_literal: true

# Class for dealing with student data.
class Student
  # @return [String] First name
  attr_accessor :first_name
  # @return [String] Last name
  attr_accessor :last_name
  # @return [String] Username
  attr_accessor :username
  # @return [String] E-mail
  attr_accessor :email
  # @return [String] Password
  attr_accessor :password

  # @param first_name [String] First name
  # @param last_name [String] Last name
  # @param username [String] Username
  # @param email [String] E-mail
  # @param password [String] Password
  # @return [void]
  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  # @return [String]
  def to_s
    [
      "First name: #{@first_name}",
      "Last name: #{@last_name}",
      "Username: #{@username}",
      "E-mail address: #{@email}"
    ].join(', ')
  end
end

# Testing the class definition

# @type [Student]
marcio = Student.new('Marcio', 'Woitek', 'mwoitek', 'marcio.woitek@test.com', 'password12345')
puts marcio

# @type [Student]
john = Student.new('John', 'Doe', 'john_doe', 'john.doe@aol.com', 'qwerty54321')
puts john.first_name
puts john.last_name
puts john.username
puts john.email
puts john.password

john.last_name = 'Smith'
puts john

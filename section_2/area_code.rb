# frozen_string_literal: true

# @type [Hash]
dial_book = {
  'New York' => '212',
  'New Brunswick' => '732',
  'Edison' => '908',
  'Plainsboro' => '609',
  'San Francisco' => '301',
  'Miami' => '305',
  'Palo Alto' => '650',
  'Evanston' => '847',
  'Orlando' => '407',
  'Lancaster' => '717'
}

# Print the city names in the dial book.
# @param dial_book [Hash] Dial book
# @return [NilClass]
def print_city_names(dial_book)
  puts 'City names:'
  dial_book.each_key { |city_name| puts city_name }
end

# Transform a city name so that it can be used in comparisons.
# @param city_name [String] City name
# @return [String] City name in lowercase and without whitespaces
def normalize_city_name(city_name)
  city_name.strip.split(' ').join.downcase
end

# Get the area code for a given city.
# @param dial_book [Hash] Dial book
# @param city_name [String] City name
# @return [String] Area code for the given city
def get_area_code(dial_book, city_name)
  # @type [String]
  area_code = ''

  # @type [String]
  normalized_city_name = normalize_city_name(city_name)

  dial_book.each_key do |city_name_dial|
    if normalize_city_name(city_name_dial) == normalized_city_name
      area_code = dial_book[city_name_dial]
      break
    end
  end

  area_code
end

# Execution flow
loop do
  print 'Do you want to lookup an area code based on a city name? (Y/N) '
  # @type [String]
  answer = gets.chomp.strip.downcase

  break if answer == 'n'

  if answer != 'y'
    puts 'Please enter Y or N.'
    next
  end

  print_city_names(dial_book)
  print 'Choose one of the city names above: '
  # @type [String]
  city_name = gets.chomp

  # @type [String]
  area_code = get_area_code(dial_book, city_name)
  if area_code != ''
    puts "The corresponding area code is #{area_code}."
  else
    puts 'The area code for this city is not available.'
  end
end

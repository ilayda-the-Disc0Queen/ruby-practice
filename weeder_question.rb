require 'set'
def find_odd_number(mixed_numbers)
  viewed_numbers = Set.new
  mixed_numbers.each do |number|
    if viewed_numbers.include?(number)
      viewed_numbers.delete(number)
    else
      viewed_numbers.add(number)
    end
  end
  return viewed_numbers
end

find_odd_number([1, 2, 1, 2, 3])
find_odd_number([1, 2, 1, 4, 2, 3, 3])
find_odd_number([1, 2, 1, 2, 3, 5, 3])

def do_2_sum_to_integer?(array_of_ints, desired_number)
  seen_numbers = array_of_ints.to_set
  # p seen_numbers
  array_of_ints.any? do |first_number_seen|
    needed_number = desired_number - first_number_seen

    if seen_numbers.include?(needed_number)
      true
    else
      seen_numbers.add(first_number_seen)
      false
    end
  end
end

do_2_sum_to_integer?([2, 3, 7], 8) # should return false

# def run_length_encoding(input_string)
#   input_string
#   raise ArgumentError "Too short" if input_string.empty? || input_string.nil?

#   char_counter = 0
#   final_result = ''
#   input_string.each_char.with_index do |current_char, index = 1|
#     if current_char != input_string[index - 1] && !current_char.nil?
#       char_counter = 1
#       final_result += char_counter.to_s + current_char
#     else current_char == input_string[index - 1]
#       incremented_char_counter = (char_counter += 1)
#       p final_result = incremented_char_counter.to_s + current_char
#     end

#   end
#   final_result
# end

# run_length_encoding("aaabbca") # should return "3a2b1c1a" but is returning "1a2a3a1b2b1c1a"

def correct_run_length_encoding(input_string)
  raise ArgumentError "Too short" if input_string.empty? || input_string.nil?
  char_counter = 0
  index = 1
  final_result = ''
  input_string.each_char do |current_char|
    while current_char == input_string[index - 1] && !current_char.nil?
      char_counter += 1
      index += 1
    end
    p final_result += char_counter.to_s + current_char if char_counter != 0
    char_counter = 0
  end
  p final_result
end

correct_run_length_encoding("aaabbfffffcab")







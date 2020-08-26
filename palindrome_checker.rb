require 'set'
def if_permutated_is_a_palindrome?(input)
  # should return true if input can be reordered to be a palindrome
  # checking every permutation of string would take O(n!) time
  # then checking if that is a palindrome would take O(n) time
  # so brute force would take O(n!n) time - not good!
  unpaired_chars = Set.new
  # if char isn't in unpaired_chars, add it
  # if it is in there, remove it
  # this way we will keep only chars that appear an odd numer of times
  # if unpaired chars only has one element in it, input is a palindrome
  (0..input.length).each do |letter_index|
    char = input[letter_index]
    if unpaired_chars.include?(char)
      unpaired_chars.delete(char)
    else
      unpaired_chars.add(char)
    end
  end
  unpaired_chars.delete(nil).size <= 1
end

p if_permutated_is_a_palindrome?("ilayda")
p if_permutated_is_a_palindrome?("liilccv")

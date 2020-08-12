def reverse_string!(string) # destructive method so use !
  left_index = 0
  right_index = string.length - 1

  while left_index < right_index
    # swap the characters
    string[left_index], string[right_index] =
    string[right_index], string[left_index]
    # move to second char and second to last char
    left_index += 1
    right_index -= 1
  end
  p string
end

reverse_string!("ilayda") # desired output = "adyali"
                 012345   # current indexes of characters
                 543210   # desired index of chars

reverse_string!("dilara")

# this takes O(n) time and O(1) space

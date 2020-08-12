def reverse_words!(sentence)
  sentence = sentence.split(" ")
  left_index = 0
  right_index = sentence.size - 1
  while left_index < right_index
    # swap the words
    sentence[left_index], sentence[right_index] =
    sentence[right_index], sentence[left_index]
    # increment L&R indexes
    left_index += 1
    right_index -= 1
  end
  puts sentence
end

reverse_words!('cake pound steal') # returns "steal pound cake"
                # 0     1     2      original indexes
                # 2     1     0      desired indexes

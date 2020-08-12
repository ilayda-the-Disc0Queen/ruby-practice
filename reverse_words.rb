def reverse_chars!(sentence, left_index = 0, right_index = sentence.size - 1) # added in indexes to make it easier to use for 2nd method
  while left_index < right_index
    # swap the letters of the words
    sentence[left_index], sentence[right_index] =
      sentence[right_index], sentence[left_index]
    # increment L&R indexes
    left_index += 1
    right_index -= 1
  end
end

def reverse_words!(sentence)
  reverse_chars!(sentence)
  p sentence
  word_start_index = 0
  # want to split the words on spaces using the char indexes, then reverse the order of chars in that word
  (0..sentence.length).each do |i|
      next unless sentence[i] == ' ' || i == sentence.length

      # want to calculate left and right index of words by splitting on " "
      reverse_chars!(sentence, word_start_index, i - 1) # i is the space index
      word_start_index = (i + 1)
    end
  puts "Your unscrambled message is: #{sentence}!"
end

reverse_words!('cake pound steal') # aim = return "steal pound cake"
                # 0     1     2      original indexes
                # 2     1     0      desired indexes
